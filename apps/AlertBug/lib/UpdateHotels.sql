CREATE OR REPLACE TABLE Pauschalreise.Hotels AS
SELECT * FROM UNNEST({{ApplyHotelChanges.data}})