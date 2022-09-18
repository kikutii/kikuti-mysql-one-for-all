SELECT
    mu.musica AS cancao,
    COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS mu
    INNER JOIN SpotifyClone.historicos AS hi ON hi.musica_id = mu.musica_id
GROUP BY hi.musica_id
ORDER BY
    reproducoes DESC,
    cancao
LIMIT 2;