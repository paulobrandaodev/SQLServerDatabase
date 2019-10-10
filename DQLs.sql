/* Mostrar dados */
SELECT * FROM aluno;

SELECT * FROM materia;

/* Mostrar dados específicos de um aluno pelo ID */
SELECT * FROM aluno WHERE IdAluno = 2;

/* Mostrar dados em uma "busca" com LIKE -- % entre as aspas */
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%';

/* Ordenar por nome do aluno de forma ascendente */
SELECT * FROM aluno ORDER BY Nome ASC;

/* Ordenar por nome do aluno de forma descrescente */
SELECT * FROM aluno ORDER BY Nome DESC;

/* Juntamos as 3 tabelas usando INNER JOIN */
SELECT * FROM trabalho 
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria 
	INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;

/* Juntamos as 3 tabelas usando INNER JOIN */
-- Deixamos somente os dados que nos interessam no momento
SELECT
aluno.Nome,
aluno.Ra,
aluno.Idade,
materia.materia,
trabalho.nota

 FROM trabalho
INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
INNER JOIN aluno   ON aluno.IdAluno = trabalho.IdAluno;


SELECT * FROM aluno;
/*/utilizamos a função nativa COUNT ] 
para retornar o número de registros na minha 
tabelaUsamos o Alias "AS" para nomear a coluna*/
SELECT COUNT (*) AS total_registros FROM aluno; 

/*Pegamos a idade máxima dos alunos*/
SELECT MAX (Idade) AS Idade_maxima FROM aluno;

/*Pegamos a idade mímina dos alunos*/
SELECT MIN (Idade) AS idade_minima FROM aluno;

/*Pegamos a média idade dos alunos*/
SELECT AVG (Idade) AS media_de_idades FROM aluno;

/*Somamos as idades */
SELECT SUM (Idade) AS soma_de_idade FROM aluno;

/*Juntamos todas as funções em uma única consulta */
SELECT 
	COUNT (*) AS total,
	MAX (Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(Idade) AS media_idade,
	SUM (Idade) AS soma_idade
FROM aluno;

/* SUBSTRING */
-- Pegamos parte de uma string
SELECT SUBSTRING(Nome, 0, 4) AS inicial FROM aluno;

/* UPPER */
-- Deixar tudo em maiúsculo
SELECT UPPER(Nome) AS Nome FROM aluno;

/* LOWER */
SELECT LOWER(Nome) AS Nome FROM aluno;



