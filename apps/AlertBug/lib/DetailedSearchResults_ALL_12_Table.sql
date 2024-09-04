WITH result_per_keyword AS (
  SELECT
    date,
    suchlauf_id,
    bundesland,
    keyword,
    AVG(cast(pk_total as int)) AS pk,
    AVG(accepted_total) AS accepted,
    AVG(c24_cheaper_total) AS cheaper
  FROM Reise.AdCheck
  WHERE date = {{ date_keywords6.value }}
    AND produkt = {{productAdCheck.value}}
    AND (CASE WHEN {{ region_keywords.value }} = "Gesamt" THEN "Gesamt" ELSE bundesland END) = {{ region_keywords.value }}
    AND platzierung = 'top'
  GROUP BY 1, 2, 3, 4
  ORDER BY 1 DESC, 4, 3
)
SELECT
  date,
  keyword,
  AVG(CASE WHEN pk = 1 AND accepted = 1 THEN cheaper END) as wins,
  AVG(pk) AS pk,
  CASE
    WHEN AVG(pk) = 0 THEN 0
    ELSE AVG(accepted) / AVG(pk)
  END AS accepted,
  COUNT(CASE WHEN pk = 1 AND accepted = 1 THEN cheaper END) as pk_abs,
  COUNT(*) AS searches,
FROM result_per_keyword
GROUP BY 1, 2
HAVING pk > 0
ORDER BY 4 DESC