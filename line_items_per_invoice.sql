SELECT COUNT(il.InvoiceId), i.InvoiceId
FROM Invoice i
JOIN InvoiceLine il
WHERE il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId


