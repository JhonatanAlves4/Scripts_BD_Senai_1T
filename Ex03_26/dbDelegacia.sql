DROP DATABASE IF EXISTS DBDELEGACIA;

CREATE DATABASE DBDELEGACIA;

USE DBDELEGACIA;

CREATE TABLE CRIME (
	IDCRIME INT NOT NULL,
	DESCRICAO VARCHAR(255),
	RUA VARCHAR(100),
	NUMERO INT,
	COMPLEMENTO VARCHAR(255),
	BAIRRO VARCHAR(100),
	CEP VARCHAR(8),
	CIDADE VARCHAR(100),
	ESTADO CHAR(2)
);

alter table CRIME drop column rua;
alter table crime drop column estado;
alter table crime drop column cidade;
alter table crime drop column cep;
alter table crime drop column complemento;
alter table crime drop column numero;
alter table crime drop column bairro;

alter table crime modify column DESCRICAO varchar(200);
alter table crime add dtcrime datetime;
alter table crime add primary key(IDCRIME);
-- alterando para auto_increment;
alter table CRIME modify column IDCRIME int auto_increment;

insert CRIME(descricao, dtcrime) 
values ('lolo','2004-02-22 09:45:06');

select * from crime;

#####################

CREATE TABLE CRIMINOSO(
  RUA VARCHAR(100),
  NUMERO INT,
  COMPLEMENTO VARCHAR(255),
  BAIRRO VARCHAR(100),
  CEP CHAR(8),
  CIDADE VARCHAR(100),
  ESTADO CHAR(2),
  DTNASCIMENTO DATE,
  TELEFONE VARCHAR(15)
);

alter table criminoso drop column telefone;
alter table criminoso drop column estado;
alter table criminoso drop column cidade;
alter table criminoso drop column bairro;
alter table criminoso drop column cep;
alter table criminoso drop column complemento;
alter table criminoso drop column rua;
alter table criminoso drop column numero;

alter table criminoso add IDCRIMINOSO int;
alter table criminoso add primary key(IDCRIMINOSO);
alter table criminoso modify column IDCRIMINOSO int auto_increment;
alter table criminoso add NOME varchar(45);

insert criminoso(DTNASCIMENTO, NOME) 
values('1978-12-14', 'Natanael');

select * from criminoso;

#################

CREATE TABLE OCORRENCIA (
	IDOCORRENCIA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	DT_OCORRENCIA DATE
);
-- drop table ocorrencia;

CREATE TABLE ITEM_OCORRENCIA (
	IDITEM INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	IDOCORRENCIA INT NOT NULL,
	DESCRICAO VARCHAR (100),
	CONSTRAINT FK_ITEM_OCORRENCIA_OCORRENCIA FOREIGN KEY (IDOCORRENCIA) REFERENCES OCORRENCIA(IDOCORRENCIA)
);
-- drop table item_ocorrencia;
drop table if exists ITEM_OCORRENCIA;
drop table OCORRENCIA;
##########################

CREATE TABLE VITIMA (
  RUA VARCHAR(100),
  NUMERO INT,
  COMPLEMENTO VARCHAR(255),
  BAIRRO VARCHAR(100),
  CEP VARCHAR(8),
  CIDADE VARCHAR(100),
  ESTADO CHAR(2),
  DTNASCIMENTO DATE
);

alter table vitima drop column estado;
alter table vitima drop column cidade;
alter table vitima drop column bairro;
alter table vitima drop column cep;
alter table vitima drop column complemento;
alter table vitima drop column rua;
alter table vitima drop column numero;

alter table vitima add IDVITIMA int;
alter table vitima add primary key (IDVITIMA);
alter table vitima modify column IDVITIMA int auto_increment;
alter table vitima add NOME varchar(45);

insert vitima(NOME, DTNASCIMENTO) 
values('Nathan', '1950-05-28');

select * from vitima;

#########################

CREATE TABLE COMETE(
	IDCRIME INT NOT NULL,
	IDCRIMINOSO INT NOT NULL
);

alter table comete add foreign key (IDCRIME) references crime(IDCRIME);
alter table comete add foreign key (IDCRIMINOSO) references crimINOSO(IDCRIMINOSO);

#####################

CREATE TABLE ATACA (
	OBSERVACAO CHAR(1)
);

alter table ataca add IDCRIMINOSO INT not NULL;
alter table ataca add IDVITIMA int not null;
alter table ataca drop column observacao;

alter table ataca add foreign key (IDCRIMINOSO) references criminoso(IDCRIMINOSO);
alter table ataca add foreign key (IDVITIMA) references vitima(IDVITIMA);

select * from ataca;

#######################

CREATE TABLE SOFRE (
	IDCRIME INT NOT NULL,
	IDVITIMA INT NOT NULL
);

alter table SOFRE add foreign key (IDCRIME) references crime(IDCRIME);
alter table SOFRE add foreign key (IDVITIMA) references vitima(IDVITIMA);

select * from sofre;

#####################

CREATE TABLE ARMA (
	IDARMA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	MARCA VARCHAR(110)
);

alter table arma drop column marca;

alter table arma add column descricao varchar(45);
alter table arma add column tipo enum('...');
alter table arma add column identificacao varchar(15);

insert into arma (descricao, tipo, identificacao)
values('lulu', '...', '243');

select * from arma;

#######################

CREATE TABLE USADA (
	IDARMA INT NOT NULL,
	IDCRIME INT NOT NULL
);

alter table usada rename usar;

alter table USAR add foreign key (IDCRIME) references crime(IDCRIME);
alter table USAR add foreign key (IDARMA) references arma(IDARMA);

select * from usar;