/* 
 Fazendo um ' join ' termo usado para fazer uma consulta
dentro de um banco de dados.
*/

SELECT * FROM alunos;
SELECT * FROM alunos_cursos;
SELECT * FROM cursos;
SELECT * FROM notas;
/*
 Um método para fazer referencias entre as chaves estrangeiras entre as tabelas
é o ' elhas ' onde vc cria um apelido para a tabela, logo abaixo um exemplo prático
*/
SELECT A.nome, C.nome, N.descricaoAtividade, N.valorNota
FROM alunos A,
    cursos C,
    alunos_cursos AC,
    notas N
WHERE A.id_alunos = AC.id_alunos AND C.id_cursos = AC.id_cursos AND AC.id_alunos_cursos = N.id_alunos_cursos