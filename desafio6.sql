SELECT 
    FORMAT(MIN(p.valor), 2) AS faturamento_minimo,
	TRUNCATE(MAX(p.valor), 2) AS faturamento_maximo,
    TRUNCATE(AVG(p.valor), 2) AS faturamento_medio,
    TRUNCATE(SUM(p.valor), 2) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id;