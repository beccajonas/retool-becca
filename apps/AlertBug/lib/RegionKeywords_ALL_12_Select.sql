SELECT 'Gesamt' as Region
UNION ALL
(SELECT DISTINCT(bundesland) as Region
FROM Reise.AdCheck
WHERE produkt = {{productAdCheck.value}}
  AND date ={{date_keywords6.value}}
ORDER BY 1 DESC)