SELECT m.Name, SUM(il.UnitPrice) as MediaTypeSales
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId

ORDER BY MediaTypeSales DESC