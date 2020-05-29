-- 1. `tracks_no_id.sql`: 
-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.

SELECT 
  t.Name AS "Track",
  a.Title AS "Album",
  m.Name AS "Media Type",
  g.Name AS "Genre",
  t.Composer,
  t.Milliseconds,
  t.Bytes,
  t.UnitPrice
FROM Track t
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId
ORDER BY a.Title;