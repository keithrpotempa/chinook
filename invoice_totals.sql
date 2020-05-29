-- 1. `invoice_totals.sql`: 
-- Provide a query that shows the 
-- Invoice Total, Customer name, Country and Sale Agent name 
-- for all invoices and customers.

SELECT 
  i.Total as "Invoice Total",
  c.FirstName as "Customer First Name",
  c.LastName as "Customer Last Name",
  i.BillingCountry "Country",
  e.FirstName as "Sales First Name",
  e.LastName as "Sales Last Name"
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
ORDER BY c.CustomerId;