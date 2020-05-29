-- 1. `brazil_customers.sql`: 
-- Provide a query only showing the Customers from Brazil.

SELECT
  c.CustomerId,
  c.FirstName,
  c.LastName,
  c.Country
FROM Customer c
WHERE c.Country = "Brazil";
