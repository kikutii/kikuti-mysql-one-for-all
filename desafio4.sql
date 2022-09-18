SELECT
    us.usuario AS usuario,
    IF(
        MAX(YEAR(hi.data_reproducao)) < 2021,
        'Usuário inativo',
        'Usuário ativo'
    ) AS status_usuario
FROM
    SpotifyClone.usuarios AS us
    INNER JOIN SpotifyClone.historicos AS hi ON hi.usuario_id = us.usuario_id
GROUP BY us.usuario
ORDER BY us.usuario;