SELECT 
	artistas.nome_artista AS artista,
    albuns.nome_album AS album,
    COUNT(seguindo.artista_id) AS seguidores
FROM SpotifyClone.albuns AS albuns 
JOIN SpotifyClone.artistas AS artistas
JOIN SpotifyClone.seguindo_artistas AS seguindo
WHERE albuns.artista_id = artistas.artista_id AND artistas.artista_id = seguindo.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;