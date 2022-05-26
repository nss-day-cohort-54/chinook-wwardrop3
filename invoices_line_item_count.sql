SELECT i.InvoiceId, COUNT(il.InvoiceLineId)
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId