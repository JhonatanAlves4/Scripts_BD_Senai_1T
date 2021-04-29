create database Ex03_15;
use Ex03_15;

#1)
create table facebook(
IdUsuario int not null auto_increment,
	primeiroNome varchar(100),
	sobrenome varchar(100),
	email varchar(100),
	telefone varchar(100),
	senha char(8),
	dataDeNascimento date,
	sexo char(1),

	Primary key(idUsuario)
);
select * from facebook;
insert into facebook(primeiroNome, sobrenome, email, telefone, senha, dataDeNascimento, sexo)
 values ('Joao', 'Pedro', 'joaop@gmail.com', '(48) 995264251', 34, '1994-03-27', 'm');
update facebook set senha = 1234567 where IdUsuario = 2; 
delete from facebook where IdUsuario = 3;

#2)
create table aluno(
IdAluno int not null Primary key auto_increment,
nome varchar(100)
);
select * from aluno;
insert into aluno (nome) value ('Charles Pereira');
update aluno set nome = 'Paulo Battistella' where IdAluno = 2;
delete from aluno where IdAluno = 3;

#3)
create table carro(
IdCarro int not null primary key auto_increment,
marca varchar(100),
modelo varchar(100),
anoFab int,
anoModelo int,
placa char(7),
cor varchar(50),
numeroChassi int
);
select * from carro;
insert carro(marca, modelo, anoFab, anoModelo, placa, cor, numeroChassi)
 values ('Ford', 'SUV', 2015, 2014, 'RKY1D88', 'azul', 725654);
 
 #4)
 create table biblioteca(
 IdBiblioteca int not null primary key auto_increment,
 titulo varchar(100),
 autor varchar(100),
 editora varchar(100),
 anoPublicacao int
 );
 select * from biblioteca;
 insert biblioteca(titulo, autor, editora, anoPublicacao)
 values('Admirável Mundo Novo', 'Aldous Huxley', 'Biblioteca Azul', 1932);