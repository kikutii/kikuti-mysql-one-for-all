SELECT
    ar.artista AS artista,
    al.album AS album,
    COUNT(us_se.usuario_id) AS seguidores
FROM
    SpotifyClone.artistas AS ar
    INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = ar.artista_id
    INNER JOIN SpotifyClone.usuarios_seguindo AS us_se ON us_se.artista_id = ar.artista_id
GROUP BY album, artista
ORDER BY
    seguidores DESC,
    artista,
    album;