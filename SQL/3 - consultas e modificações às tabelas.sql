select * from Professores;
select * from Alunos where idadeAluno > 18;
select p.nomeProf, c.nomeCurso, a.nomeAluno from Professores p join Cursos c on p.idProf = c.idProf join Alunos a on c.idCurso = a.idCurso where p.especialidade = 'Piano';
select avg(preco) as PrecoMedio from Cursos;
select avg(idadeAluno) as IdadeMedia from Alunos;
select sum(preco) as TotalGanhos from Professores p join Cursos c on p.idProf = c.idProf;
update Professores set especialidade = 'Piano Clássico' where idProf = 1;
delete from Alunos where idAluno = 3;
delete from Aulas where idAula = 5;