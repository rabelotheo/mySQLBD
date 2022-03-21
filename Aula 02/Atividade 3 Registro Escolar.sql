-- Atividade 3 Escola

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
turma int,
notas DECIMAL(3,1),
primary key (id)
);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Luiz David', 14, 03, 6.9);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Ryan Russo', 14, 03, 8.1);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Tamara Sanchez', 15, 01, 9.4);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Rafael Barros', 15, 01, 7.0);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Hudson Melo', 17, 04, 5.9);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Luciana Rios', 17, 04, 7.9);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Guilherme Farias', 16, 02, 8.6);

INSERT INTO tb_alunes (nome, idade, turma, notas)
VALUES ('Faedra Matos', 16, 02, 6.5);

SELECT * FROM tb_alunes WHERE notas>=7;

SELECT * FROM tb_alunes WHERE notas<=7;

UPDATE tb_alunes SET notas = 7.1 WHERE id=1;