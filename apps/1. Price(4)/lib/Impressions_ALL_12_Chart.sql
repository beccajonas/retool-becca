SELECT
  werbetreibender,
  CASE
    WHEN LENGTH(werbetreibender) <= 12 THEN werbetreibender
    ELSE CONCAT(LEFT(werbetreibender, 10), '...')
  END as werbetreibender_short,
  COUNT(*) AS row_count
FROM Reise.AdCheck
WHERE date >= {{ CutoffDay_ALL_12_Query.data.date_cutoff['0'] }}
  AND produkt = {{productAdCheck.value}}
  AND platzierung = 'top'
GROUP BY werbetreibender
ORDER BY row_count DESC
LIMIT {{ slider_top_n.value }}