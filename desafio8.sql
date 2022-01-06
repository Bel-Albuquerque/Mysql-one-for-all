SELECT 
artistas.nome_artista AS artista,
albuns.nome_album AS album
FROM SpotifyClone.albuns AS albuns
JOIN SpotifyClone.artistas AS artistas
WHERE artistas.artista_id = albuns.artista_id
AND artistas.nome_artista = 'Walter Phoenix';