SELECT 
U.nome as usuario,
COUNT(H.usuario_id) as qtde_musicas_ouvidas,
ROUND(SUM(M.duracao) / 60, 2) as total_minutos
FROM SpotifyClone.usuarios as U
INNER JOIN SpotifyClone.historico_de_reproducao as H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.musicas as M
ON H.musica_id = M.musica_id
GROUP BY U.nome
ORDER BY U.nome; 