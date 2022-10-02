SELECT usr.usuario AS 'usuario', 
    COUNT(qtd.cancao_id) AS 'qt_de_musicas_ouvidas',
    ROUND(SUM(song.duracao)/60, 2) AS 'total_minutos'
    FROM SpotifyClone.usuarios AS usr
INNER JOIN SpotifyClone.historico AS qtd
    ON usr.usuario_id = qtd.usuario_id
INNER JOIN SpotifyClone.cancoes AS song
    ON qtd.cancao_id = song.cancao_id
GROUP BY usuario
ORDER BY usuario ASC;