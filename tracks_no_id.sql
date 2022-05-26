SELECT a.title as AlbumTitle, mt.name as MediaType, g.name as Genre, t.name as TrackName
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN MediaType mt
ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g
ON t.GenreId = g.GenreId