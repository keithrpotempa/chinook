-- 1. `top_5_tracks.sql`: Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
  t.Name,
  SUM(il.Quantity) AS "Sold"
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY SUM(il.Quantity) DESC
LIMIT 5;