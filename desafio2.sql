SELECT
  COUNT(mu.musica) AS cancoes,
  COUNT(DISTINCT al.album) AS albuns,
  COUNT(DISTINCT ar.artista) AS artistas
FROM SpotifyClone.musicas AS mu
JOIN SpotifyClone.albuns AS al ON mu.album_id = al.album_id
JOIN SpotifyClone.artistas AS ar ON al.artista_id = ar.artista_id;