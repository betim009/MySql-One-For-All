SELECT artista.artista AS artista,
	albuns.album AS album
FROM SpotifyClone.artistas AS artista
INNER JOIN SpotifyClone.albuns AS albuns
ON artista.artista_id = albuns.artista_id
	WHERE artista.artista = 'Elis Regina'
ORDER BY album ASC;