SELECT COUNT(il.InvoiceId)
FROM InvoiceLine il
JOIN Invoice i
ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceId = 37