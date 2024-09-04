WITH AverageDeltas AS (
  SELECT
    DATE(execution_date) as datum, competitor, country_code, destination, country_long, destination_long,
     
    COUNT(delta_price) as comparisons,
    SUM(CAST(delta_price < -0.05 AS INT)) AS wins,
    SUM(CAST(delta_price < 0 AND delta_price >= -0.05 AS INT)) AS low_wins,
    SUM(CAST(delta_price = 0 AS INT)) as parities,
    SUM(CAST(delta_price > 0 AS INT)) as losses,
    SUM(CAST(delta_price > 0 AND delta_price <= 0.05 AS INT)) as low_losses,
    SUM(CAST(delta_price > 0.05 AND delta_price <= 0.1 AS INT)) as mid_losses,
    SUM(CAST(delta_price > 0.1 AS INT)) as high_losses,
    
    AVG(CASE WHEN delta_price > 0 THEN delta_price END) as delta,

    ANY_VALUE(requests) as requests,
    ANY_VALUE(total_requests) as total_requests,
  FROM Mietwagen.Crawler
  WHERE DATE(execution_date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
    AND mandator = {{MW_Selection}}
    AND category = {{Category_Selection}}
  GROUP BY 1,2,3,4,5,6
),
RollingAggregations AS (
  SELECT 
    datum, competitor, country_code, destination, country_long, destination_long,
    requests, total_requests,
    SUM(comparisons) OVER w as rolling_comparisons,
    SUM(wins) OVER w as rolling_wins,
    SUM(low_wins) OVER w as low_rolling_wins,
    SUM(parities) OVER w as rolling_parities,
    SUM(losses) OVER w as rolling_losses,
    SUM(low_losses) OVER w as low_rolling_losses,
    SUM(mid_losses) OVER w as mid_rolling_losses,
    SUM(high_losses) OVER w as high_rolling_losses,
    ARRAY_AGG(delta) OVER w as rolling_deltas,
  FROM AverageDeltas
  --WHERE delta IS NOT NULL
  WINDOW w AS (PARTITION BY competitor, destination
      ORDER BY datum ROWS BETWEEN 6 preceding and CURRENT ROW)
),
LossRateShareAndMedian AS (
  SELECT 
    datum, competitor, country_code, destination, country_long, destination_long,
    requests, total_requests, requests / total_requests as requests_share,
    low_rolling_wins / rolling_comparisons AS low_win_rate,
    rolling_wins / rolling_comparisons AS win_rate,
    rolling_parities / rolling_comparisons AS parity_rate,
    rolling_losses / rolling_comparisons AS loss_rate,
    low_rolling_losses / rolling_comparisons AS low_loss_rate,
    mid_rolling_losses / rolling_comparisons AS mid_loss_rate,
    high_rolling_losses / rolling_comparisons AS high_loss_rate,
    rolling_losses / (SUM(rolling_losses) OVER (PARTITION BY datum, competitor) + 0.0001) as loss_share,
    SUM(rolling_losses) OVER (PARTITION BY datum, competitor) as rolling_losses_total,
    rolling_comparisons, rolling_losses,
    (SELECT DISTINCT PERCENTILE_CONT(delta, 0.5) OVER() 
    FROM UNNEST(rolling_deltas) delta
    ) as rolling_median_delta
  FROM RollingAggregations
),
UrgencyScores AS (
  SELECT *, COALESCE((requests_share * loss_rate * rolling_median_delta * loss_share) * 1000000, 0)  AS urgency_score
  FROM LossRateShareAndMedian
)
SELECT *, urgency_score - LAG(urgency_score, 7, 0) OVER (PARTITION BY competitor, destination ORDER BY datum) as trend
FROM UrgencyScores
ORDER BY urgency_score DESC