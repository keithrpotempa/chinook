-- 1. `top_5_tracks.sql`: Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
  t.Name,
  COUNT(*) AS "Sold"
FROM InvoiceLine il
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY il.TrackId
ORDER BY COUNT(il.TrackId) DESC
LIMIT 5;