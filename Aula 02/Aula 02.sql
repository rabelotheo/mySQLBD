-- Criar Banco de Dados
CREATE DATABASE db_quitanda;

-- Selecionar o banco de dados
USE db_quitanda;


-- Criar Tabela  tb_produtos

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("xuxu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 25, "2022-03-25", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-06-07", 7.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 5, "2022-05-08", 8.50);

-- Listar todos os produtos

SELECT * FROM tb_produtos;

SELECT preco, CONCAT('R$ ', FORMAT(preco, 2, 'pt_br')) AS preço FROM tb_produtos;

-- Atualizar dados da Tabela

UPDATE tb_produtos SET preco = 8.59 WHERE id = 5;

DELETE FROM tb_produtos WHERE id = 3;


/* Alteração na Estrutura da Tabela */

ALTER TABLE tb_produtos MODIFY preco decimal(8,2);

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE preçov preço decimal(8,2);













