WITH result_per_keyword AS (
  SELECT 
    date, 
    suchlauf_id, 
    bundesland, 
    keyword, 
    AVG(CAST(pk_total AS INT)) AS pk, 
    AVG(accepted_total) AS accepted, 
    AVG(c24_cheaper_total) AS cheaper, 
    AVG(pp_total) AS pp
  FROM Reise.AdCheck
  WHERE produkt = {{productAdCheck.value}} AND platzierung = 'top'
  GROUP BY 1, 2, 3, 4
  ORDER BY 1 DESC, 4, 3
)
SELECT 
  date,
  AVG(CASE WHEN pk = 1 AND accepted = 1 THEN cheaper END) AS sieg_rel,
  AVG(pk) AS preiskampf_rel,
  CASE WHEN AVG(pk) = 0 THEN NULL ELSE AVG(accepted) / AVG(pk) END AS teilgenommen_rel,
  SUM(CASE WHEN pk = 1 AND accepted = 1 THEN cheaper END) AS sieg_abs,
  SUM(pk) AS preiskampf_abs,
  SUM(accepted) AS teilgenommen_abs,
  COUNT(*) AS suchanfragen
FROM result_per_keyword
GROUP BY 1
ORDER BY 1 DESC
