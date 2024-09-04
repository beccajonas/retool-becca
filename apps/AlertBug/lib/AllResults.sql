SELECT
  date as datum,
  search_id,
  timestamp,
  competitor,
  operator,
  operator_ch24,
  region,
  hotel_name,
  travelers,
  holiday_duration_in_days,
  departure_date,
  return_date,
  room_allocation,
  p.price,
  price_ch24,
  delta_price,
  CASE
    WHEN delta_price > 0.001 THEN "verloren"
    WHEN delta_price < -0.001 THEN "gewonnen"
    ELSE "Parität"
  END AS vergleich,
  screenshot,
  screenshot_ch24,
  url,
  url_ch24,
FROM Pauschalreise.Price as p
WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
ORDER BY 1 DESC, delta_price DESC