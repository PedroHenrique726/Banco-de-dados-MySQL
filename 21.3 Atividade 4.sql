CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	categoria_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
	produto_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    descricao VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);


INSERT INTO tb_categorias (nome, descricao) 
VALUES('Boi', 'Carnes de boi'),
('Frango', 'Carnes de frango'),
('Porco', 'Carnes de porco'),
('Cordeiro', 'Carnes de cordeiro'),
('Peixe', 'Peixes frescos');


INSERT INTO tb_produtos (nome, preco, descricao, categoria_id) 
VALUES('Coxão Mole', 25.00, 'Corte macio de boi', 1),
('Peito de Frango', 10.00, 'Peito de frango sem pele', 2),
('Costelinha de Porco', 15.00, 'Costelinha de porco temperada', 3),
('Pernil de Cordeiro', 20.00, 'Pernil de cordeiro fresco', 4),
('Salmão', 30.00, 'Filé de salmão', 5),
('Contrafilé', 28.00, 'Corte de contrafilé de boi', 1),
('Coxa de Frango', 12.00, 'Coxa de frango', 2),
('Lombo de Porco', 18.00, 'Lombo de porco temperado', 3);


SELECT * FROM tb_produtos WHERE preco > 20;

SELECT * FROM tb_produtos WHERE preco BETWEEN 10 AND 20;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.categoria_id;


SELECT * FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.categoria_id
WHERE tb_produtos.categoria_id = 2;


