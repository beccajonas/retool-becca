select * from (select
  RIGHT(CAST(suchlauf_id as STRING), 3) as suchlauf_id,
  bundesland,
  CONCAT(LEFT(bundesland, 3), '-', RIGHT(CAST(suchlauf_id as STRING), 3)) as search_id,
  werbetreibender,
  pos_abs as Rang,
  preis as preis,
  text,
  CASE cast(pk_total as int)
    WHEN 1 THEN 'ja'
    WHEN 0 THEN 'nein'
  END AS preiskampf,
  CASE accepted_total
    WHEN 1 THEN 'ja'
    WHEN 0 THEN 'nein'
  END AS teilgenommen,
  CASE c24_cheaper_total
    WHEN 1 THEN 'ja'
    WHEN 0 THEN 'nein'
  END AS gewonnen
FROM Reise.AdCheck
WHERE keyword = {{table16.selectedRow.data.keyword}}
  AND date = {{ date_keywords6.value }}
  AND produkt = {{productAdCheck.value}}
  AND CASE WHEN {{ checkbox2.value }} THEN preis IS NOT NULL ELSE TRUE END
  AND (CASE WHEN {{ region_keywords.value }} = "Gesamt" THEN "Gesamt" ELSE bundesland END) = {{ region_keywords.value }}
ORDER BY 1, 2)
order by search_id, Rang