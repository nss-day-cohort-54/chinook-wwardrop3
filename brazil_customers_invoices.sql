SELECT FirstName || " " || LastName as FullName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer c
JOIN Invoice i
ON i.InvoiceId
WHERE c.CustomerId = i.CustomerId