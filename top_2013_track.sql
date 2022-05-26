SELECT TrackName, MAX(TotalTrackSales)
FROM (SELECT t.Name as TrackName, SUM(il.UnitPrice) as TotalTrackSales
    FROM Track t
    JOIN InvoiceLine il ON il.TrackId = t.TrackId
    JOIN Invoice i ON il.InvoiceId = i.InvoiceId
    WHERE i.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
    )

