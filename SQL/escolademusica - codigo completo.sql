create database EscolaDeMusica;
use EscolaDeMusica;
create table Professores (
idProf int primary key auto_increment,
nomeProf varchar(50) not null,
especialidade varchar(30) not null,
dataNasc date not null
);
create table Instrumentos (
idInst int primary key auto_increment,
nomeInst varchar(50) not null,
tipoInst varchar(50) not null
);
create table Cursos (
idCurso int primary key auto_increment,
idProf int,
nomeCurso varchar(50) not null,
duracao int not null,
preco decimal not null,
foreign key (idProf) references Professores(idProf)
);
create table Alunos (
idAluno int primary key auto_increment,
idCurso int,
nomeAluno varchar(50) not null,
idadeAluno int not null,
foreign key (idCurso) references Cursos(idCurso)
);
create table Aulas (
idAula int primary key auto_increment,
idInst int,
idCurso int,
dataAula date not null,
sumario text,
foreign key (idInst) references Instrumentos(idInst),
foreign key (idCurso) references Cursos(idCurso)
);
insert into Professores (nomeProf, especialidade, dataNasc) values
('Ana Silva', 'Piano', '1980-05-15'),
('João Pereira', 'Guitarra', '1975-09-20'),
('Maria Costa', 'Violino', '1990-12-10'),
('Carlos Santos', 'Bateria', '1985-03-25'),
('Sofia Almeida', 'Saxofone', '1992-07-30');
insert into Instrumentos (nomeInst, tipoInst) values
('Piano de Cauda', 'Cordas'),
('Guitarra Elétrica', 'Cordas'),
('Violino Acústico', 'Cordas'),
('Bateria Completa', 'Percussão'),
('Saxofone Alto', 'Sopro');
insert into Cursos (idProf, nomeCurso, duracao, preco) values
(1, 'Curso de Piano para Iniciantes', 6, 300.00),
(2, 'Curso de Guitarra Elétrica Avançada', 8, 400.00),
(3, 'Curso de Violino Intermediário', 5, 250.00),
(4, 'Curso de Bateria para Todos', 7, 350.00),
(5, 'Curso de Saxofone Básico', 4, 200.00);
insert into Alunos (idCurso, nomeAluno, idadeAluno) values
(1, 'Pedro Gomes', 15),
(2, 'Luisa Fernandes', 22),
(3, 'Rafael Oliveira', 18),
(4, 'Beatriz Martins', 20),
(5, 'Tiago Rodrigues', 17);
insert into Aulas (idInst, idCurso, dataAula, sumario) values
(1, 1, '2024-01-10', 'Introdução ao Piano e Postura'),
(2, 2, '2024-01-12', 'Técnicas Avançadas de Guitarra'),
(3, 3, '2024-01-15', 'Escalas e Arpejos no Violino'),
(4, 4, '2024-01-18', 'Ritmos Básicos de Bateria'),
(5, 5, '2024-01-20', 'Fundamentos do Saxofone');
select * from Professores;
select * from Alunos where idadeAluno > 18;
select p.nomeProf, c.nomeCurso, a.nomeAluno from Professores p join Cursos c on p.idProf = c.idProf join Alunos a on c.idCurso = a.idCurso where p.especialidade = 'Piano';
select avg(preco) as PrecoMedio from Cursos;
select avg(idadeAluno) as IdadeMedia from Alunos;
select sum(preco) as TotalGanhos from Professores p join Cursos c on p.idProf = c.idProf;
update Professores set especialidade = 'Piano Clássico' where idProf = 1;
delete from Alunos where idAluno = 3;
delete from Aulas where idAula = 5;
