-- 1. `total_invoices_{year}.sql`: 
-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(*)
FROM Invoice i
WHERE strftime('%Y',i.InvoiceDate) = "2009";

SELECT COUNT(*)
FROM Invoice i
WHERE strftime('%Y',i.InvoiceDate) = "2011";