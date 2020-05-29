-- 1. `total_sales_{year}.sql`: 
-- What are the respective total sales for each of those years?

SELECT SUM(i.Total) as "2009 Yearly Total"
FROM Invoice i
WHERE strftime('%Y',i.InvoiceDate) = "2009";

SELECT SUM(i.Total) as "2011 Yearly Total"
FROM Invoice i
WHERE strftime('%Y',i.InvoiceDate) = "2011";