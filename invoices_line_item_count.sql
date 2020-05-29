-- 1. `invoices_line_item_count.sql`: 
-- Provide a query that shows 
-- all Invoices but includes the # of invoice line items.

SELECT 
  COUNT(*) AS "Line Items",
  i.*
FROM InvoiceLine il
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId;