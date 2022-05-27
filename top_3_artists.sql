SELECT art.Name as ArtistName, SUM(il.UnitPrice) as ArtistSales, COUNT(il.UnitPrice) as ArtistCount, AVG(il.UnitPrice)
FROM Artist art
JOIN Album a on a.ArtistId = art.ArtistId
JOIN InvoiceLine il on il.TrackId
GROUP BY ArtistName
