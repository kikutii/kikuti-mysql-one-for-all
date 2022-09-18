SELECT
    COUNT(hi.musica_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historicos AS hi
    INNER JOIN SpotifyClone.usuarios AS us ON hi.usuario_id = us.usuario_id
WHERE
    us.usuario = 'Barbara Liskov';