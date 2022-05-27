SELECT InvoiceDate, SUM(Invoice.Total)
FROM Invoice
WHERE InvoiceDate BETWEEN "2009-01-01" AND "2011-01-01"
GROUP BY STRFTIME("%Y",InvoiceDate)