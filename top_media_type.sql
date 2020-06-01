-- 1. `top_media_type.sql`: Provide a query that shows the most purchased Media Type.

SELECT
  Name,
  MAX(Sales)
FROM (
  SELECT
    mt.Name AS Name,
    SUM(il.Quantity) AS Sales
  FROM InvoiceLine il
  JOIN Track t ON t.TrackId = il.TrackId
  JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
  GROUP BY mt.MediaTypeId
);