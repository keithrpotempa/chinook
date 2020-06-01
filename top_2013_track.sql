-- 1. `top_2013_track.sql`: Provide a query that shows the most purchased track of 2013.

SELECT 
  Name,
  MAX(Sales) AS "Sales Count"  
FROM (
  SELECT
    t.Name as Name,
    COUNT(il.InvoiceLineId) AS Sales
  FROM Invoice i
  JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
  JOIN Track t ON t.TrackId = il.TrackId
  WHERE strftime('%Y',i.InvoiceDate) = "2013"
  GROUP BY t.TrackId
);