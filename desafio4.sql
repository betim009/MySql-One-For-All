SELECT usr.usuario AS 'usuario',
	IF (MAX(YEAR(_data.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.usuarios AS usr
INNER JOIN SpotifyClone.historico AS _data
ON usr.usuario_id = _data.usuario_id
GROUP BY usuario
ORDER BY usuario ASC;