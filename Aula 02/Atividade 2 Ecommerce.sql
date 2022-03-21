-- Atividade 2 E-commerce

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
marca VARCHAR(255),
nserie VARCHAR(255),
preco decimal(8,2),
primary key (id)
);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('C270 HD WEBCAM', 'Logitech', 'NM5145672', 179.00);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('Teclado Gamer K210', 'Redragon', 'NM9512248', 245.00);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('Processador i5 12600k', 'Intel', 'NM2519637', 2700.00);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('Mouse Gamer C400', 'Razer', 'NM4527386', 268.00);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('HeadSet Gamer T930', 'Corsair', 'NM6523781', 649.99);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('Monitor Gamer 144hz', 'LG', 'NM5186375', 1199.00);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('SSD 480GB', 'Kingston', 'NM2419385', 499.00);

INSERT INTO tb_produtos (nome, marca, nserie, preco)
VALUES ('HD 4TB', 'Seagate', 'NM7521468', 999.00);

SELECT * FROM tb_produtos WHERE preco>500;

SELECT * FROM tb_produtos WHERE preco<500;

UPDATE tb_produtos SET preco = 2199.00 WHERE id=3;