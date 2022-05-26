SELECT t.name as TrackName, SUM(il.UnitPrice) AS TrackSales, il.UnitPrice, COUNT(il.UnitPrice)
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY TrackName
ORDER BY TrackSales DESC

LIMIT 5

