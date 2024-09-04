SELECT
  CASE {{ select_timeframe_2.value}}
    WHEN 'last_day' THEN MAX(date)
    WHEN 'last_7d' THEN DATE_SUB(MAX(date), INTERVAL 6 DAY)
    ELSE '2023-01-01'
  END AS date_cutoff
FROM Reise.AdCheck
WHERE produkt = {{productAdCheck.value}}