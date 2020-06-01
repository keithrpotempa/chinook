-- 1. `sales_agent_customer_count.sql`: Provide a query that shows the count of customers assigned to each sales agent.

SELECT 
  e.FirstName,
  e.LastName, 
  COUNT(*) AS "Customer Count"
FROM Customer c
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId;