-- 1. `top_country.sql`: Which country's customers spent the most?

SELECT
  BillingCountry,
  MAX(Total) as "Total"
FROM (
  SELECT 
    BillingCountry, 
    SUM(Total) AS "Total"
  FROM Invoice
  GROUP BY BillingCountry
);