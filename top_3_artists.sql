-- 1. `top_3_artists.sql`: Provide a query that shows the top 3 best selling artists.

SELECT
  ar.Name as Name,
  COUNT(il.InvoiceLineId) AS Sales
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId
GROUP BY ar.Name
ORDER BY Sales DESC
LIMIT 3;