SELECT
    us.usuario AS usuario,
    COUNT(hi.musica_id) AS qt_de_musicas_ouvidas,
    ROUND(
        SUM(mu.duracao_segundos / 60),
        2
    ) AS total_minutos
FROM
    SpotifyClone.usuarios AS us
    INNER JOIN SpotifyClone.historicos AS hi ON us.usuario_id = hi.usuario_id
    INNER JOIN SpotifyClone.musicas AS mu ON hi.musica_id = mu.musica_id
GROUP BY us.usuario
ORDER BY us.usuario;