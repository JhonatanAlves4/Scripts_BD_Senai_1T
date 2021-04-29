DROP DATABASE IF EXISTS DBALUNO;
CREATE DATABASE DBALUNO;
USE DBALUNO;

CREATE TABLE ALUNO (
	IDALUNO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(20) NOT NULL,
	SEXO ENUM ('M', 'F'),
	IDADE int,
	CIDADE VARCHAR(20)
);

alter table aluno modify column NOME varchar(45);
alter table aluno modify column SEXO char(1);
alter table aluno modify column CIDADE varchar(45);

insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('ANDERSON', 'M', 17, 'PALHOCA');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('CESAR', 'M', 21, 'SAO JOSE');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('DANIEL', 'M', 19, 'PALHOCA');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('DIEGO', 'M', 19, 'BLUMENAU');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('EDUARDO', 'M', 20, '');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('GABRIEL', 'M', 19, 'TUBARAO');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('JOAO', 'M', 18, 'SAO JOSE');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('LEONARDO', 'M', 19, '');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('LUCAS', 'M', 20, 'BLUMENAU');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('PRISCILA', 'F', 19, 'PALHOÇA');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('RENATA', 'F', 21, 'TUBARAO');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('MARIA', 'F', 22, 'BLUMENAU');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('TANIA', 'F', 19, 'SAO JOSE');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('CARLOS', 'M', 22, 'TUBARAO');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('JOSE', 'M', 19, 'PALHOCA');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('MARISA', 'F', 19, '');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('AMANDA', 'F', 20, '');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('JOANA', 'F', 19, '');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('ALICE', 'F', 21, 'SAO JOSE');
insert into aluno (NOME, SEXO, IDADE, CIDADE)
values('TADEU', 'M', 18, 'TUBARAO');

select * from aluno;
