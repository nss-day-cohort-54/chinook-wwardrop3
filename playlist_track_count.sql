SELECT p.name, pt.PlaylistId, COUNT(pt.TrackId)
FROM PlaylistTrack pt
JOIN Playlist p
ON p.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId