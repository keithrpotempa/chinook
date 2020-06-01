-- 1. `top_agent.sql`: Which sales agent made the most in sales over all?

SELECT
  SupportRepId,
  FirstName,
  LastName,
  MAX(Total) AS "Total Sales"
FROM (
    SELECT 
      SUM(i.Total) AS "Total",
      c.SupportRepId AS "SupportRepId",
      e.FirstName AS "FirstName",
      e.LastName AS "LastName"
    FROM Invoice i
    JOIN Customer c ON c.CustomerId = i.CustomerId
    JOIN Employee e ON c.SupportRepId = e.EmployeeId
    GROUP BY c.SupportRepId
);