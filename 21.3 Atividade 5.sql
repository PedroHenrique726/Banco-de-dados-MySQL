CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;


CREATE TABLE tb_categorias (
    categoria_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    tipo_produto VARCHAR(50) NOT NULL
);


CREATE TABLE tb_produtos (
    produto_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    descricao TEXT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);


INSERT INTO tb_categorias (nome, descricao, tipo_produto) 
VALUES('Medicamentos', 'Produtos para tratamento de saúde', 'Remédios'),
('Higiene Pessoal', 'Produtos de cuidados pessoais', 'Higiene'),
('Suplementos Alimentares', 'Produtos para complementar a dieta', 'Suplementos'),
('Dermocosméticos', 'Produtos para cuidados com a pele', 'Cosméticos'),
('Alimentos Naturais', 'Produtos alimentícios naturais e saudáveis', 'Alimentos');


INSERT INTO tb_produtos (nome, preco, descricao, categoria_id) 
VALUES('Paracetamol', 12.50, 'Analgésico e antitérmico', 1),
('Shampoo Anticaspa', 15.00, 'Shampoo para controle da caspa', 2),
('Whey Protein', 120.00, 'Suplemento proteico', 3),
('Protetor Solar FPS 50', 30.00, 'Protetor solar facial', 4),
('Granola', 8.90, 'Cereal natural rico em fibras', 5),
('Ibuprofeno', 10.00, 'Analgésico e anti-inflamatório', 1),
('Creme Hidratante Corporal', 20.00, 'Hidratante para pele seca', 4),
('Vitamina C', 25.00, 'Suplemento vitamínico', 3);


SELECT * FROM tb_produtos WHERE preco > 100;


SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;


SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.categoria_id
WHERE tb_categorias.nome = 'Medicamentos';
