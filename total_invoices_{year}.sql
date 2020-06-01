-- 1. `total_invoices_{year}.sql`: 
-- How many Invoices were there in 2009 and 2011?

SELECT 
  COUNT(InvoiceId),
  strftime('%Y',i.InvoiceDate) AS 'InvoiceYear'
FROM Invoice i
WHERE InvoiceYear = "2009"
OR InvoiceYear = "2011"
GROUP BY InvoiceYear;