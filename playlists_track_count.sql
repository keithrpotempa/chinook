-- 1. `playlists_track_count.sql`: 
-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.

SELECT 
  COUNT(*) AS "Track Count",
  p.Name
FROM PlaylistTrack pt
JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId;