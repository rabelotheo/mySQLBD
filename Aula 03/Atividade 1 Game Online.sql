-- Atividade 1 Aula 03

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255),
arma VARCHAR(255),
pet VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classe(nome, arma, pet)
VALUES ("Arqueira", "Besta", "Gavião");

INSERT INTO tb_classe(nome, arma, pet)
VALUES ("Feiticeiro", "Cajado", "Cobra");

INSERT INTO tb_classe(nome, arma, pet)
VALUES ("Druida", "Cajado", "Urso");

INSERT INTO tb_classe(nome, arma, pet)
VALUES ("Guerreiro", "Espada", "Leão");

INSERT INTO tb_classe(nome, arma, pet)
VALUES ("Barbaro", "Machado", "Tigre");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
nivel INT,
ataque INT,
defesa INT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Machadeiro Rox", 125, 1250, 625, 5);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Fala Que Eu Te Curo", 310, 3100, 1010, 3);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Merlin", 480, 4800, 2040, 2);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Te Matei", 250, 2500, 1500, 1);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Escudeiro Warlord", 180, 1800, 1000, 4);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Rushei Emtu", 450, 4500, 2250, 5);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Magasha", 320, 3200, 800, 2);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Nemvinada", 140, 1400, 500, 1);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

SELECT * FROM tb_classe INNER JOIN tb_personagem
 ON tb_personagem.classe_id = tb_classe.id;
 
 SELECT * FROM tb_classe INNER JOIN tb_personagem
 ON tb_personagem.classe_id = tb_classe.id WHERE classe_id = 1;