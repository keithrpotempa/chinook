-- 1. `line_item_track_artist.sql`: 
-- Provide a query that includes the purchased track name 
-- AND artist name with each invoice line item.

SELECT 
  il.*,
  t.Name AS "Track Name",
  ar.Name as "Artist Name"
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId;