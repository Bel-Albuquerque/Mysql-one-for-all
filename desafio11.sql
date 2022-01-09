SELECT 
nome_da_musica AS nome_musica,
REPLACE(
	REPLACE(
		REPLACE(
			REPLACE(
				REPLACE(nome_da_musica, 'Streets', 'Code Review'), 
			'Her Own', 'Trybe'),
		'Inner Fire', 'Project'),
   'Silly', 'Nice'),
'Circus', 'Pull Request') AS novo_nome

FROM SpotifyClone.musicas
WHERE nome_da_musica like '%Streets'
	OR 
     nome_da_musica like '%Her Own'
	OR
    nome_da_musica like '%Inner Fire'
    OR
    nome_da_musica like '%Silly'
    OR
    nome_da_musica like '%Circus'
ORDER BY nome_da_musica;