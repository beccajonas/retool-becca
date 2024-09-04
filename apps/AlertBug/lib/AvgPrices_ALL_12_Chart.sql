SELECT
  werbetreibender,
  CASE
    WHEN LENGTH(werbetreibender) <= 12 THEN werbetreibender
    ELSE CONCAT(LEFT(werbetreibender, 10), '...')
  END as werbetreibender_short,
  AVG(preis) AS avg_price
FROM Reise.AdCheck
WHERE date >= {{ CutoffDay_ALL_12_Query.data.date_cutoff['0'] }}
  AND werbetreibender IN UNNEST({{ Impressions_ALL_12_Chart.data.werbetreibender }})
  AND produkt = {{productAdCheck.value}}
  AND platzierung = 'top'
GROUP BY werbetreibender
HAVING avg_price IS NOT NULL
ORDER BY 3 ASC