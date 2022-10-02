SELECT song.cancao AS cancao, 
    COUNT(qtd.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS song
INNER JOIN SpotifyClone.historico AS qtd
ON song.cancao_id = qtd.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2