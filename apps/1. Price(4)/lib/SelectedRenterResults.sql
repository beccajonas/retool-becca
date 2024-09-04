SELECT
  country_code,
  destination,
  cheapest_comp_renter,
  CAST(
    cheapest_comp_renter IN (SELECT DISTINCT LOWER(Vermieter) FROM Pauschalreise_kpis.top5_vermieter_und_usa)
  AS INT) AS is_check_renter
FROM Pauschalreise.Crawler
WHERE execution_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
  AND mw = {{ MW_Selection.value }}
  AND competitor = {{ Competitor_Selection.value }}
  AND category = {{ Travelers_Selection.value }}
  AND cheapest_comp_supplier = {{ UrgencyTable_Supplier.selectedRow.cheapest_comp_supplier }}
  AND cheapest_comp_renter != "unknown_renter"
  AND (
    CASE
      WHEN delta_price > 0 THEN "verloren"
      WHEN delta_price < 0 THEN "gewonnen"
    ELSE "Parität" END
  ) IN UNNEST({{ErgebnisSelection2.value}})