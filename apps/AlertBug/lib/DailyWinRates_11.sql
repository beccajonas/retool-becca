WITH aggregates AS (
  SELECT
    date as datum,
    competitor,
    region,
    travelers,
    COUNT(*) as crawler_count,
    COUNT(delta_price) as delta_count,
    SUM(CAST(delta_price < -0.05 AS INT)) AS wins,
    SUM(CAST(delta_price < -0.001 AND delta_price >= -0.05 AS INT)) AS low_wins,
    SUM(CAST(delta_price <= 0.001 AND delta_price >= -0.001 AS INT)) AS parity,
    SUM(CAST(delta_price <= 0.05 AND delta_price > 0.001 AS INT)) AS low_losses,
    SUM(CAST(delta_price <= 0.1 AND delta_price > 0.05 AS INT)) AS mid_losses,
    SUM(CAST(delta_price > 0.1 AS INT)) AS high_losses,
  
  FROM Pauschalreise.Price
  WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH)
  GROUP BY 1, 2, 3, 4
),
windowed AS (
  SELECT
    datum, competitor, region, travelers,
    SUM(crawler_count) OVER w as crawler_count,
    SUM(delta_count) OVER w AS delta_count,
    SUM(wins) OVER w AS wins,
    SUM(low_wins) OVER w AS low_wins,
    SUM(parity) OVER w AS parity,
    SUM(high_losses) OVER w AS high_losses,
    SUM(mid_losses) OVER w AS mid_losses,
    SUM(low_losses) OVER w AS low_losses
  FROM aggregates
  WINDOW w AS (PARTITION BY competitor, region, travelers ORDER BY datum ROWS BETWEEN {{ RollingDays.value }} PRECEDING AND CURRENT ROW)
)
SELECT datum, competitor, region, travelers,
  crawler_count,
  delta_count,
  wins / delta_count AS wins,
  low_wins / delta_count AS low_wins,
  parity / delta_count AS parity,
  high_losses / delta_count AS high_losses,
  mid_losses / delta_count AS mid_losses,
  low_losses / delta_count AS low_losses,
FROM windowed
ORDER BY 2, 3, 4, 1 DESC