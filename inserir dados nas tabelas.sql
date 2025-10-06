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