CREATE OR REPLACE TABLE Pauschalreise.Travelers AS
SELECT * FROM UNNEST({{ApplyTravelerChanges.data}})