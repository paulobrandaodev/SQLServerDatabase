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

