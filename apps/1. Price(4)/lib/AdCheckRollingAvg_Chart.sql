WITH result_per_keyword as (
  SELECT date, suchlauf_id, bundesland, keyword, AVG(cast(pk_total as int)) as pk, AVG(accepted_total) as accepted, AVG(c24_cheaper_total) as cheaper, AVG(pp_total) as pp
  FROM Reise.AdCheck
  WHERE produkt = {{productAdCheck.value}} AND platzierung = 'top'
  GROUP BY 1, 2, 3, 4
  ORDER BY 1 DESC, 4, 3
),
sums as (
SELECT date,
  SUM(CASE WHEN pk = 1 AND accepted = 1 THEN cheaper END) as sieg_abs,
  SUM(pk) as preiskampf_abs,
  SUM(accepted) as teilgenommen_abs,
  COUNT(*) as suchanfragen
FROM result_per_keyword
GROUP BY 1
ORDER BY 1 DESC
),
last_7d_total as (
SELECT
  date,
  SUM(sieg_abs) OVER (ORDER BY date ASC ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS siege_last_7d,
  SUM(preiskampf_abs) OVER (ORDER BY date ASC ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS preiskampf_last_7d,
  SUM(teilgenommen_abs) OVER (ORDER BY date ASC ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS teilgenommen_last_7d,
  SUM(suchanfragen) OVER (ORDER BY date ASC ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS suchanfragen_last_7d
FROM sums
)
SELECT
  date,
  suchanfragen_last_7d as suchanfragen,
  preiskampf_last_7d as preiskampf_abs,
  teilgenommen_last_7d as teilgenommen_abs,
  siege_last_7d as sieg_abs,
  preiskampf_last_7d / suchanfragen_last_7d as preiskampf_rel,
  teilgenommen_last_7d / preiskampf_last_7d as teilgenommen_rel,
  siege_last_7d / teilgenommen_last_7d as sieg_rel
FROM last_7d_total
ORDER BY 1 DESC