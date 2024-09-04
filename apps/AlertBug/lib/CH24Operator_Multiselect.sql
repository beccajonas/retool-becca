SELECT
  DISTINCT competitor, region, operator_ch24 as operator
FROM Pauschalreise.Price
WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 4 MONTH)
AND operator_ch24 IS NOT NULL