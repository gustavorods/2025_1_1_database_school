CREATE DATABASE Escola

CREATE TABLE tblalunos (
    codaluno INT PRIMARY KEY,
	nome varchar (150) not null,
    endereco VARCHAR(255) NOT NULL,     
    telefone VARCHAR(15) NOT NULL,    
    nascimento DATE NOT NULL, 
    pai VARCHAR(100) NOT NULL,         
    mae VARCHAR(100) NOT NULL,         
    responsavel VARCHAR(100) NOT NULL  
);


CREATE TABLE tblnotas (
	codaluno int not null,
	codcurso int not null,
	nota float not null, 
	bimestre int not null,
	observacao varchar (250), -- Opcional 
);
/*FKs  - tblnotas:*/
-- 1
ALTER TABLE tblnotas
ADD CONSTRAINT fk_codAluno
FOREIGN KEY (codaluno) REFERENCES tblalunos(codaluno)

-- 2
ALTER TABLE tblnotas
ADD CONSTRAINT fk_codCurso
FOREIGN KEY (codcurso) REFERENCES tblcursos(codcurso)


CREATE TABLE tblcursos (
	codcurso int primary key,
	nomecurso varchar (150) not null,
	codprofessor int not null
);
/*FKs  - tblcursos:*/
-- 1
ALTER TABLE tblcursos
ADD CONSTRAINT fk_codProfessor
FOREIGN KEY (codprofessor) REFERENCES tblprofessor(codprofessor)


CREATE TABLE tblprofessor (
	codprofessor int primary key,
	nome varchar (150) not null,
	endereco VARCHAR(255) NOT NULL
);

INSERT INTO tblprofessor (codprofessor, nome, endereco) VALUES
(1, 'Prof. João Silva', 'Rua A, 123, Cidade X'),
(2, 'Prof. Maria Souza', 'Rua B, 456, Cidade Y'),
(3, 'Prof. Carlos Oliveira', 'Rua C, 789, Cidade Z'),
(4, 'Prof. Ana Costa', 'Rua D, 101, Cidade X'),
(5, 'Prof. Roberto Lima', 'Rua E, 202, Cidade Y'),
(6, 'Prof. Claudia Rocha', 'Rua F, 303, Cidade Z');

INSERT INTO tblalunos (codaluno, nome, endereco, telefone, nascimento, pai, mae, responsavel) VALUES
(1, 'Lucas Almeida', 'Rua 1, 111, Cidade A', '(11) 98765-4321', '2010-05-10', 'Carlos Almeida', 'Fernanda Almeida', 'Carlos Almeida'),
(2, 'Mariana Pereira', 'Rua 2, 222, Cidade B', '(21) 98876-5432', '2011-06-11', 'José Pereira', 'Luciana Pereira', 'Luciana Pereira'),
(3, 'Gabriel Santos', 'Rua 3, 333, Cidade C', '(31) 97654-3210', '2010-07-12', 'Fernando Santos', 'Patricia Santos', 'Patricia Santos'),
(4, 'Isabela Silva', 'Rua 4, 444, Cidade A', '(41) 96543-2109', '2009-08-13', 'Roberto Silva', 'Juliana Silva', 'Roberto Silva'),
(5, 'Pedro Costa', 'Rua 5, 555, Cidade B', '(51) 95432-1098', '2012-09-14', 'Sérgio Costa', 'Adriana Costa', 'Adriana Costa'),
(6, 'Luana Rocha', 'Rua 6, 666, Cidade C', '(61) 94321-0987', '2011-10-15', 'Paulo Rocha', 'Larissa Rocha', 'Larissa Rocha'),
(7, 'Rafael Oliveira', 'Rua 7, 777, Cidade A', '(71) 93210-9876', '2010-11-16', 'Gustavo Oliveira', 'Camila Oliveira', 'Gustavo Oliveira'),
(8, 'Gabriela Martins', 'Rua 8, 888, Cidade B', '(81) 92109-8765', '2012-12-17', 'Leonardo Martins', 'Tatiane Martins', 'Tatiane Martins'),
(9, 'Felipe Souza', 'Rua 9, 999, Cidade C', '(91) 91098-7654', '2010-01-18', 'Eduardo Souza', 'Ana Souza', 'Ana Souza'),
(10, 'Amanda Costa', 'Rua 10, 1010, Cidade A', '(10) 90987-6543', '2011-02-19', 'Ricardo Costa', 'Raquel Costa', 'Raquel Costa'),
(11, 'João Vitor Lima', 'Rua 11, 1111, Cidade B', '(20) 89876-5432', '2009-03-20', 'Marcos Lima', 'Simone Lima', 'Simone Lima'),
(12, 'Beatriz Alves', 'Rua 12, 1212, Cidade C', '(30) 88765-4321', '2012-04-21', 'João Alves', 'Marta Alves', 'Marta Alves'),
(13, 'Victor Hugo', 'Rua 13, 1313, Cidade A', '(40) 87654-3210', '2011-05-22', 'Renato Hugo', 'Vanessa Hugo', 'Vanessa Hugo'),
(14, 'Sophia Nunes', 'Rua 14, 1414, Cidade B', '(50) 86543-2109', '2009-06-23', 'André Nunes', 'Carla Nunes', 'Carla Nunes'),
(15, 'Arthur Barbosa', 'Rua 15, 1515, Cidade C', '(60) 85432-1098', '2010-07-24', 'Luiz Barbosa', 'Denise Barbosa', 'Denise Barbosa');

INSERT INTO tblcursos (codcurso, nomecurso, codprofessor) VALUES
(1, 'Matemática', 1),
(2, 'Português', 2),
(3, 'Ciências', 3),
(4, 'História', 4);

INSERT INTO tblnotas (codaluno, codcurso, nota, bimestre, observacao) VALUES
(1, 1, 8.5, 1, 'Bom desempenho'),
(1, 2, 7.0, 1, 'Precisa melhorar a escrita'),
(1, 3, 9.0, 1, 'Excelente compreensão'),
(1, 4, 8.0, 1, 'Bons conhecimentos'),
(2, 1, 6.5, 1, 'Pode melhorar'),
(2, 2, 8.0, 1, 'Boa leitura e interpretação'),
(2, 3, 7.5, 1, 'Bom desempenho em ciências'),
(2, 4, 9.0, 1, 'Ótima interpretação histórica'),
(3, 1, 7.0, 1, 'Bom desempenho em matemática'),
(3, 2, 6.5, 1, 'Pode melhorar a escrita'),
(3, 3, 8.0, 1, 'Bom conhecimento de ciências'),
(3, 4, 7.5, 1, 'Bom desempenho na história'),
(4, 1, 9.0, 1, 'Excelente performance'),
(4, 2, 8.5, 1, 'Ótima leitura'),
(4, 3, 9.0, 1, 'Excelente entendimento'),
(4, 4, 8.5, 1, 'Boa compreensão histórica'),
(5, 1, 7.5, 1, 'Precisa melhorar a matemática'),
(5, 2, 6.0, 1, 'Leitura precisa de mais atenção'),
(5, 3, 8.0, 1, 'Bom desempenho em ciências'),
(5, 4, 7.0, 1, 'Bom desempenho em história'),
(6, 1, 8.5, 1, 'Desempenho satisfatório'),
(6, 2, 7.0, 1, 'Boa interpretação de texto'),
(6, 3, 9.0, 1, 'Excelente desempenho em ciências'),
(6, 4, 8.0, 1, 'Bom conhecimento histórico'),
(7, 1, 6.0, 1, 'Precisa melhorar a matemática'),
(7, 2, 7.5, 1, 'Boa leitura'),
(7, 3, 8.5, 1, 'Bom desempenho em ciências'),
(7, 4, 7.0, 1, 'Deve se dedicar mais à história'),
(8, 1, 9.0, 1, 'Excelente desempenho'),
(8, 2, 8.5, 1, 'Boa leitura e interpretação'),
(8, 3, 7.0, 1, 'Pode melhorar em ciências'),
(8, 4, 8.5, 1, 'Ótima compreensão histórica'),
(9, 1, 8.0, 1, 'Bom desempenho'),
(9, 2, 9.0, 1, 'Excelente leitura'),
(9, 3, 8.5, 1, 'Bom entendimento de ciências'),
(9, 4, 7.0, 1, 'Precisa melhorar em história'),
(10, 1, 7.5, 1, 'Bom desempenho em matemática'),
(10, 2, 6.0, 1, 'Precisa melhorar a escrita'),
(10, 3, 8.0, 1, 'Bom desempenho em ciências'),
(10, 4, 7.5, 1, 'Bom conhecimento histórico'),
(11, 1, 8.0, 1, 'Bom desempenho'),
(11, 2, 9.0, 1, 'Excelente leitura'),
(11, 3, 7.0, 1, 'Pode melhorar em ciências'),
(11, 4, 8.5, 1, 'Boa compreensão histórica'),
(12, 1, 6.5, 1, 'Precisa melhorar a matemática'),
(12, 2, 7.5, 1, 'Boa leitura'),
(12, 3, 8.0, 1, 'Bom desempenho em ciências'),
(12, 4, 8.0, 1, 'Bom desempenho histórico'),
(13, 1, 9.5, 1, 'Excelente desempenho'),
(13, 2, 8.5, 1, 'Boa leitura'),
(13, 3, 9.0, 1, 'Ótimo desempenho em ciências'),
(13, 4, 9.0, 1, 'Excelente compreensão histórica'),
(14, 1, 8.0, 1, 'Bom desempenho'),
(14, 2, 7.0, 1, 'Pode melhorar a escrita'),
(14, 3, 8.5, 1, 'Ótimo desempenho em ciências'),
(14, 4, 7.5, 1, 'Bom conhecimento histórico'),
(15, 1, 7.0, 1, 'Pode melhorar a matemática'),
(15, 2, 8.0, 1, 'Boa leitura'),
(15, 3, 7.5, 1, 'Bom desempenho em ciências'),
(15, 4, 8.0, 1, 'Bom conhecimento histórico');

select * from tblprofessor
select * from tblcursos
select * from tblnotas
select * from tblalunos


