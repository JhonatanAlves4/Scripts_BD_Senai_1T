DROP DATABASE IF EXISTS DBALUNO;
CREATE DATABASE DBALUNO;
USE DBALUNO;

CREATE TABLE ALUNO (
	IDALUNO INT NOT NULL AUTO_INCREMENT
	, NOME VARCHAR(20) NOT NULL
	, SEXO CHAR(1)
	, IDADE INT
	, CIDADE VARCHAR(20)
    , PRIMARY KEY (IDALUNO)
);

ALTER TABLE ALUNO MODIFY COLUMN NOME VARCHAR(45);
ALTER TABLE ALUNO MODIFY COLUMN CIDADE VARCHAR(45);


INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('ANDERSON', 17, 'M','PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('CESAR', 21, 'M', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('DANIEL', 19, 'M', 'PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('DIEGO', 19, 'M', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('EDUARDO', 20, 'M', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('GABRIEL', 19, 'M', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOAO', 18, 'M', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('LEONARDO', 19, 'M', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('LUCAS', 20, 'M', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('PRISCILA', 19, 'F', 'PALHOÇA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('RENATA', 21, 'F', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('MARIA', 22, 'F', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('TANIA', 19, 'F', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('CARLOS', 22, 'M', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOSE', 19, 'M', 'PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('MARISA', 19, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('AMANDA', 20, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOANA', 19, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('ALICE', 21, 'F', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('TADEU', 18, 'M', 'TUBARAO');

#1
SELECT * FROM ALUNO WHERE SEXO = 'M';
#2
SELECT * FROM ALUNO WHERE IDADE = 19;
#3
SELECT * FROM ALUNO WHERE NOME LIKE 'D%';
#4
SELECT * FROM ALUNO WHERE (IDADE >=20 AND IDADE <= 22);
#5
SELECT * FROM ALUNO WHERE CIDADE IS NULL;
#6
SELECT * FROM ALUNO WHERE CIDADE = 'BLUMENAU';
#7
SELECT * FROM ALUNO WHERE IDADE <> 18;
#8
SELECT * FROM ALUNO WHERE NOME LIKE '%RI%';
#9
SELECT * FROM ALUNO WHERE CIDADE = 'SAO JOSE' AND SEXO = 'M' AND IDADE < 20;
#10
SELECT * FROM ALUNO WHERE (SEXO = 'F' AND IDADE > 20) OR (SEXO = 'M' AND IDADE > 17);
#11
SELECT * FROM ALUNO WHERE NOME LIKE '%A%' AND NOME LIKE '%R%';
#12
SELECT NOME, IDADE FROM ALUNO WHERE SEXO = 'F';
#13
SELECT IDALUNO, NOME FROM ALUNO WHERE CIDADE = 'BLUMENAU';
#14
SELECT NOME, CIDADE FROM ALUNO WHERE IDADE < 18;
#15
SELECT NOME, CIDADE FROM ALUNO WHERE IDADE >= 15 AND IDADE <= 18 AND CIDADE <> 'PALHOCA';
#16
SELECT CIDADE FROM ALUNO WHERE CIDADE <> 'NULL';
#17
SELECT NOME FROM ALUNO WHERE (IDADE = 18 AND CIDADE = 'PALHOCA') OR (IDADE = 17 AND CIDADE = 'SAO JOSE');
#18
SELECT NOME FROM ALUNO WHERE SEXO = 'M' AND IDADE >= 18 AND IDADE <= 25 AND CIDADE = 'TUBARAO';
#19
SELECT NOME, IDADE FROM ALUNO ORDER BY IDADE;
#20
SELECT IDALUNO, NOME FROM ALUNO ORDER BY IDADE DESC;
#21
SELECT * FROM ALUNO ORDER BY IDADE DESC, NOME ASC;
#22
SELECT * FROM ALUNO ORDER BY SEXO, NOME;

SELECT * FROM ALUNO;