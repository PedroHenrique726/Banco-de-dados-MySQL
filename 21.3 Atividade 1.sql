CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    habilidade_preferida VARCHAR(30) NOT NULL,
    arma_preferida VARCHAR(30) NOT NULL,
    vocacao VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tb_personagens(
    id INT AUTO_INCREMENT PRIMARY KEY,
    força INT NOT NULL,
    defesa INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    destreza INT NOT NULL,
    classes_id INT,
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(habilidade_preferida, arma_preferida, vocacao)
VALUES
("invocação", "Varinha", "Mago"),
("divinidade", "arco", "Paladino"),
("Investida", "machado", "Knight"),
("magia elemental", "cajado", "Druid"),
("ataque a distancia", "lança", "Lanceiro");

INSERT INTO tb_personagens(força, defesa, nome, destreza, classes_id)
VALUES
(1500, 2000, "Knight Boladao", 2500, 3),
(2000, 1200, "Lord PAulistinha", 1700, 3),
(2500, 1000, "Dru Ida", 1800, 4),
(1700, 2500, "Palla Demoniak", 2000, 2),
(3000, 500, "Martin", 2800, 5),
(1200, 2200, "Mage Mystica", 800, 1),
(1800, 2800, "Rogue Sombrio", 1500, 1),
(2200, 1700, "Healer Curador", 2000, 4);

SELECT * FROM tb_personagens WHERE força > 2000;

SELECT * FROM tb_personagens  WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.id = '2';
