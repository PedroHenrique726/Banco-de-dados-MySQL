CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255) NOT NULL,
    preco DOUBLE(6,2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    qtdeEstoque INT NOT NULL,
    disponivel BOOLEAN NOT NULL,    
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, preco, descricao, qtdeEstoque,disponivel)
VALUES("Smartphone", 999.99, "Smartphone com tela de alta resolução", 50, true);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto, preco, descricao, qtdeEstoque,disponivel)
VALUES("Laptop", 1299.99, "Laptop leve e portatil", 30, true),
("Fone de Ouvido Bluetooth", 49.70, "Fone de ouvido sem fio com cancelamento de ruído", 100, true),
("Smartwatch", 199.90, "Relógio inteligente com monitoramento de saúde e notificações", 0, false),
("Monitor Ultrawide", 570.20, "Monitor de alta resolução com uma ampla tela panorâmica", 10, true),
("Teclado Mecanico RGB",  84.20, "Teclado mecânico com iluminação RGB personalizável", 200, true),
("Mouse Gamer", 39.47, "Mouse ergonômico com DPI ajustável", 0, false),
("Caixa de som Bluetooth", 80.0, "Caixa de som portatil", 40, true);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET qtdeEstoque = 20, disponivel = true WHERE id = 4;
