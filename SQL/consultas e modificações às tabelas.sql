select * from Professores;
select * from Alunos where idadeAluno > 18;
select a from Aulas a inner join Cursos c on a.idCurso = c.idCurso where c.nomeCurso like '%Guitarra%';
select avg(preco) as PrecoMedio from Cursos;
select avg(idadeAluno) as IdadeMedia from Alunos;
select c.idProf, avg(c.preco) as PrecoMedioPorProfessor from Cursos c group by c.idProf;
update Professores set especialidade = 'Piano Clássico' where idProf = 1;
delete from Alunos where idAluno = 3;
delete from Cursos where idCurso = 3;