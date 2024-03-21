CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias(
	id_categorias BIGINT NOT NULL PRIMARY KEY,
    descricao VARCHAR(255),
    tipo VARCHAR(255)
);

CREATE TABLE tb_produtos(
	produto_id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	preco DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    generico BOOLEAN NOT NULL,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categorias)    
	);
    

INSERT INTO tb_categorias (id_categorias, descricao, tipo) 
VALUES(1, 'Medicamentos', 'Remédios'),
(2, 'Higiene Pessoal', 'Cuidados Pessoais'),
(3, 'Cosméticos', 'Beleza'),
(4, 'Suplementos Alimentares', 'Saúde'),
(5, 'Bem-Estar', 'Geral');


INSERT INTO tb_produtos (nome, preco, categoria_id, generico) VALUES 
('Paracetamol', 10.00, 1, FALSE),
('Sabonete Líquido', 2.50, 2, TRUE),
('Hidratante Facial', 20.00, 3, FALSE),
('Vitamina C', 15.00, 4, FALSE),
('Açaí em Pó', 25.00, 5, FALSE),
('Ibuprofeno', 80.00, 1, FALSE),
('Shampoo Anticaspa', 12.50, 2, TRUE),
('Protetor Solar FPS 50', 70.00, 3, FALSE);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id_categorias;


SELECT * FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id_categorias
WHERE tb_produtos.categoria_id = 3;