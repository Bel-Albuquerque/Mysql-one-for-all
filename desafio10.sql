SELECT musicas.nome_da_musica AS nome,
 COUNT(musicas.nome_da_musica) AS reproducoes
 
FROM SpotifyClone.musicas AS musicas
JOIN SpotifyClone.historico_de_reproducao AS historico
JOIN SpotifyClone.usuarios AS usuarios
JOIN SpotifyClone.planos AS planos

ON 
(planos.nome_do_plano = 'gratuito' OR planos.nome_do_plano = 'pessoal')
AND (planos.plano_id = usuarios.plano_id)
AND(usuarios.usuario_id = historico.usuario_id)
AND
	historico.musica_id = musicas.musica_id
GROUP BY musicas.nome_da_musica
ORDER BY musicas.nome_da_musica;
    