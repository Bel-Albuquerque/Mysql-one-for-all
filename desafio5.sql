SELECT 
	music.nome_da_musica AS cancao, 
    COUNT(hist.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS music
JOIN SpotifyClone.historico_de_reproducao AS hist
ON hist.musica_id = music.musica_id
GROUP BY hist.musica_id
ORDER BY reproducoes DESC, cancao
LIMIT 2