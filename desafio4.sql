SELECT 
U.nome as usuario,
if (MAX(year (`data`)) = '2021', 'Usuário ativo', 'Usuário inativo') as condicao_usuario
FROM SpotifyClone.historico_de_reproducao AS H
INNER JOIN SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id
GROUP BY U.nome
ORDER BY U.nome; 