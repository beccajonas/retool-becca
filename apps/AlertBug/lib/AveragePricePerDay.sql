WITH room_array AS (
  SELECT
    date as datum,
    competitor,
    region,
    travelers,
    SPLIT(room_allocation, ',') as rooms,
    p.price as price,
    price_ch24,
    delta_price
  FROM Pauschalreise.Price as p
),
person_array AS (
SELECT
  datum,
  competitor,
  region,
  travelers,
  ARRAY_LENGTH(SPLIT(rooms, '-')) as num_persons,
  price,
  price_ch24,
  delta_price
FROM room_array, UNNEST(rooms) as rooms
)
SELECT
  datum,
  competitor,
  region,
  travelers,
  num_persons,
  AVG(CASE WHEN delta_price IS NOT NULL THEN price END) as avg_daily_comp_price,
  AVG(CASE WHEN delta_price IS NOT NULL THEN price_ch24 END) as avg_daily_ch24_price,
  AVG(delta_price) as avg_daily_delta_price,
  COUNT(delta_price) as price_count,
  COUNT(*) as crawler_count,
FROM person_array
GROUP BY 1, 2, 3, 4, 5
ORDER BY 2, 3, 1
