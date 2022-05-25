SELECT t.name, art.Name, il.InvoiceLineId
FROM InvoiceLine il
JOIN Invoice i
ON i.InvoiceId = il.InvoiceId
JOIN Track t
ON il.TrackId = t.TrackId
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN Artist art
ON a.ArtistId = art.ArtistId
