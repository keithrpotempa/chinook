-- 1. `top_2009_agent.sql`: Which sales agent made the most in sales in 2009?

--     > **Hint:** Use the [MAX](https://www.sqlite.org/lang_aggfunc.html#maxggunc) function on a [subquery](http://beginner-sql-tutorial.com/sql-subquery.htm).

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
    WHERE strftime('%Y',i.InvoiceDate) = "2009"
    GROUP BY c.SupportRepId
);