SELECT t.Name, il.InvoiceLineId
FROM Track t
JOIN InvoiceLine il
ON il.TrackId = t.TrackId
