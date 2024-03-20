CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    idade INT NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    datacontratacao DATE,
    PRIMARY KEY(id)
);


INSERT INTO tb_colaboradores(nome, salario, idade, cargo, datacontratacao)
VALUES("Carlos", 8700.50, 27, "Advogado", "2022-05-12"),
("Paula", 15200.99, 22, "Diretora", "2024-01-05"),
("Jose", 1200.00, 18, "Estagiario", "2023-07-03"),
("Ana", 27000.00, 35, "CEO", "2019-12-05"),
("Marcos", 1850.00, 25, "Porteiro", "2020-11-28");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(7,2);

UPDATE tb_colaboradores SET salario = 1412.30 WHERE id = 3;