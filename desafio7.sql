SELECT 
	artista.artista AS artista,
    albuns.album AS album,
    COUNT(seguidores.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artista
INNER JOIN SpotifyClone.albuns AS albuns
ON artista.artista_id = albuns.artista_id
INNER JOIN SpotifyClone.seguidores AS seguidores
ON artista.artista_id = seguidores.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;