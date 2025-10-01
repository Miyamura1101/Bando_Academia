Create table Planos (
	id int Identity(1,1) PRIMARY KEY,
	nomePlano varchar(30) not null Check (nomePlano in ('Basico', 'Intermediário', 'Avançado')),
	valor decimal(10, 2) not null,
	beneficios varchar(200) 
);

Create table Instrutores (
	id int Identity(1,1) Primary key,
	nome varchar(30) not null,
	cpf char(11) unique not null,
	especialidade varchar(70) not null,
	turnoTrabalho varchar(70) not null
);

Create table Alunos( 
	id int Identity(1,1) PRIMARY KEY,
	nome varchar(100) not null,
	cpf varchar(11) unique not null,
	dataNacimento date not null,
	telefone varchar(20) not null,
	idPlano int not null,
	Foreign Key (idPlano) REFERENCES Planos(id)
);

Create table FichasTreino (
	id int Identity(1,1) Primary key,
	dataIncio datetime2 not null,
	dataValidade datetime2 not null,
	idAluno int not null Foreign Key references Alunos(id),
	idInstrutor int not null Foreign Key references Instrutores(id)
);

Create table Exercicios (
	id int Identity(1,1) Primary Key,
	nome varchar(100) not null,
	series int not null,
	repeticao int not null,
	observacoes varchar(100) null
)