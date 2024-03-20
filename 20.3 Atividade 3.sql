CREATE DATABASE db_alunos;

USE db_alunos;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    alturaMetros DOUBLE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, idade, serie, endereco, alturaMetros)
VALUES("Lucas", 15, "9º ano", "Rua Pio XI", 1.75),
("Joao", 14, "8º ano", "Avenida Central", 1.60),
("Ana", 16, "2º ano Ensino Medio", "Rua Mauricio Pena", 1.69),
("Pedro", 13, "7º ano", "Travessa Nossa Senhora", 1.60),
("Julia", 17, "3º ano Ensino Medio", "Rua das Palmeiras", 1.72),
("Maria", 12, "6ºano", "Avenida das Arvores", 1.50),
("Camila", 14, "8º ano", "Rua dos Passarinhos", 1.64),
("Gabriel", 15, "9º ano", "Avenida Nova Esperança", 1.80);

ALTER TABLE tb_alunos ADD notas DOUBLE(2,1);

SELECT * FROM tb_alunos;

UPDATE tb_alunos SET notas = 8.0 WHERE id = 1;
UPDATE tb_alunos SET notas = 3.5 WHERE id = 2;
UPDATE tb_alunos SET notas = 9.2 WHERE id = 3;
UPDATE tb_alunos SET notas = 2.0 WHERE id = 4;
UPDATE tb_alunos SET notas = 9.8 WHERE id = 5;
UPDATE tb_alunos SET notas = 5.5 WHERE id = 6;
UPDATE tb_alunos SET notas = 7.4 WHERE id = 7;
UPDATE tb_alunos SET notas = 8.5 WHERE id = 8;

SELECT * FROM tb_alunos WHERE notas > 7.0;

SELECT * FROM tb_alunos WHERE notas < 7.0;

-- Não vou fazer uma atualização novamente porque ja fiz varias quando inseri a coluna notas