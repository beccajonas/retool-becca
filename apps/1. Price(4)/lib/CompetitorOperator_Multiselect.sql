SELECT
  DISTINCT competitor, region, operator
FROM Pauschalreise.Price
WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 4 MONTH)
AND operator IS NOT NULL