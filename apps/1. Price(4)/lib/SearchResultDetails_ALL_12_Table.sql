WITH result_per_keyword AS (
  SELECT
    date,
    suchlauf_id,
    bundesland,
    keyword,
    AVG(cast (pk_total as int)) AS pk,
    AVG(accepted_total) AS accepted,
    AVG(c24_cheaper_total) AS cheaper,
    SUM(CASE WHEN werbetreibender = 'CHECK24' THEN pos_abs END) AS c24_rank
  FROM Reise.AdCheck
  WHERE date >= {{ CutoffDay_ALL_12_Query.data.date_cutoff[0] }}
    AND produkt = {{productAdCheck.value}}
    AND platzierung = 'top'
  GROUP BY 1, 2, 3, 4
)
SELECT
  keyword,
  ROUND(AVG(c24_rank),2) AS c24_rank,
  COUNT(*) AS total_calls,
  ROUND(COUNT(c24_rank) / COUNT(*), 3) AS teilnahme,
  SUM(pk) AS pk,
  CASE
    WHEN AVG(pk) = 0 THEN 0
    ELSE ROUND(AVG(accepted) / AVG(pk), 3)
  END AS teilnahme_pk,
  CASE
    WHEN AVG(accepted) = 0 THEN 0
    ELSE ROUND(AVG(cheaper) / AVG(accepted), 3)
  END AS wins
FROM result_per_keyword 
WHERE date >= {{ CutoffDay_ALL_12_Query.data.date_cutoff[0] }}
GROUP BY keyword
ORDER BY 2 DESC