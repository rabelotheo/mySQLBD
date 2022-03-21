CREATE DATABASE db_rhservice;

use db_rhservice;

create table tb_funcionaries(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
ferias date,
salario decimal(8,2) NOT NULL,
primary key (id)
);

INSERT INTO tb_funcionaries (nome, idade, ferias, salario)
VALUES ("Lucas Godoi", 23, "2022-07-01", 1750.00);

INSERT INTO tb_funcionaries (nome, idade, ferias, salario)
VALUES ("Felipe Menezes", 27, "2023-03-01", 1840.00);

INSERT INTO tb_funcionaries (nome, idade, ferias, salario)
VALUES ("Paula Almeida", 31, "2022-05-01", 2350.00);

INSERT INTO tb_funcionaries (nome, idade, ferias, salario)
VALUES ("Luiz Henrique", 25, "2023-02-01", 2150.00);

INSERT INTO tb_funcionaries (nome, idade, ferias, salario)
VALUES ("Renata", 29, "2022-12-01", 2750.00);

SELECT * FROM tb_funcionaries salario ;

SELECT *, CONCAT('R$ ', FORMAT(salario, 2, 'pt_br')) AS salario FROM tb_funcionaries WHERE salario>2000;

SELECT *, CONCAT('R$ ', FORMAT(salario, 2, 'pt_br')) AS salario FROM tb_funcionaries WHERE salario<2000;

UPDATE tb_funcionaries SET salario = 3100.00 WHERE id=5;