SELECT COUNT(hist.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS usuarios
JOIN SpotifyClone.historico_de_reproducao AS hist
WHERE usuarios.usuario_id = hist.usuario_id
AND usuarios.nome = 'Bill';