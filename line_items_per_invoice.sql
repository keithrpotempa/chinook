-- 1. `line_items_per_invoice.sql`: 
-- Looking at the InvoiceLine table, 
-- provide a query that COUNTs the number of line items for each Invoice. 
-- HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)

SELECT
  i.InvoiceId,
  COUNT(*) AS "Line Item Count"
FROM InvoiceLine i
GROUP BY i.InvoiceId;