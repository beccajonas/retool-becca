SELECT DISTINCT(date) as Datum
FROM Reise.AdCheck
WHERE produkt = {{productAdCheck.value}}
ORDER BY 1 DESC