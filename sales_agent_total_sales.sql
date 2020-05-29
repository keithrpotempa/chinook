-- 1. `sales_agent_total_sales.sql`: 
-- Provide a query that shows total sales made by each sales agent.

SELECT 
  SUM(i.total) AS "Invoice Total",
  e.*
FROM Invoice i
JOIN Customer c on i.CustomerId = c.CustomerId
JOIN Employee e on c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId;