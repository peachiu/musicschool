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