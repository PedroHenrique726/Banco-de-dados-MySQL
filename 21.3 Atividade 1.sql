CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    habilidade_preferida VARCHAR(30) NOT NULL,
    arma_preferida VARCHAR(30) NOT NULL,
    vocacao VARCHAR(20) NOT NULL PRIMARY KEY 
);



CREATE TABLE tb_personagens(
	força INT NOT NULL,
    defesa INT NOT NULL,
    nome VARCHAR(30) NOT NULL PRIMARY KEY,
    destreza INT NOT NULL,
    classesvocacao VARCHAR(20)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classesvocacao) REFERENCES tb_classes(vocacao);

INSERT INTO tb_classes(habilidade_preferida, arma_preferida, vocacao)
VALUES
("invocação", "Varinha", "Mago"),
("divinidade", "arco", "Paladino"),
("Investida", "machado", "Knight"),
("magia elemental", "cajado", "Druid"),
("ataque a distancia", "lança", "Lanceiro");


INSERT INTO tb_personagens(força, defesa, nome, destreza, classesvocacao)
VALUES
(1500, 2000, "Knight Boladao", 2500, "Knight"),
(2000, 1200, "Lord PAulistinha", 1700, "Knight"),
(2500, 1000, "Dru Ida", 1800, "Druid"),
(1700, 2500, "Palla Demoniak", 2000, "Paladino"),
(3000, 500, "Martin", 2800, "Lanceiro"),
(1200, 2200, "Mage Mystica", 800, "Mago"),
(1800, 2800, "Rogue Sombrio", 1500, "Mago"),
(2200, 1700, "Healer Curador", 2000, "Druid");

SELECT * FROM tb_personagens WHERE força > 2000;

SELECT * FROM tb_personagens  WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesvocacao = tb_classes.vocacao;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesvocacao = tb_classes.vocacao
WHERE tb_personagens.classesvocacao = 'MAgo';