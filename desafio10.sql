SELECT
    mu.musica AS nome,
    COUNT(hi.musica_id) AS reproducoes
FROM
    SpotifyClone.historicos AS hi
    INNER JOIN SpotifyClone.musicas AS mu ON hi.musica_id = mu.musica_id
    INNER JOIN SpotifyClone.usuarios AS us ON hi.usuario_id = us.usuario_id
WHERE plano_id = 1 OR plano_id = 4
GROUP BY nome
ORDER BY nome;