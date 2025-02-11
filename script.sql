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
