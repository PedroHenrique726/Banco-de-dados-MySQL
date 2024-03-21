CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(30) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    especial BOOLEAN
);

CREATE TABLE tb_pizzas(
	preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL PRIMARY KEY,
    categorias_id INT,
    sabor VARCHAR(255) NOT NULL,
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao, especial) 
VALUES('Tradicional', 'Pizzas clássicas e populares', FALSE),
('Vegetariana', 'Pizzas feitas com ingredientes exclusivamente vegetais', FALSE),
('Frutos do Mar', 'Pizzas com frutos do mar frescos', FALSE),
('Especial do Chef', 'Pizzas exclusivas criadas pelo chef', TRUE),
('Doces', 'Pizzas com coberturas doces', FALSE);

INSERT INTO tb_pizzas (preco, tamanho, nome, categorias_id, sabor) 
VALUES(20.00, 'Média', 'Margherita', 1, 'Molho de tomate, mussarela, manjericão'),
(125.00, 'Grande', 'Calabresa', 1, 'Molho de tomate, calabresa, cebola, mussarela'),
(30.00, 'Média', 'Vegetariana', 2, 'Molho de tomate, pimentão, cebola, cogumelos, azeitonas'),
(90.00, 'Grande', 'Frutos do Mar', 3, 'Molho de tomate, camarão, lula, mexilhão, mussarela'),
(40.00, 'Pequena', 'Especial do Chef', 4, 'Molho especial do chef, ingredientes exclusivos'),
(45.00, 'Média', 'Quatro Queijos', 1, 'Molho de tomate, mussarela, parmesão, gorgonzola, catupiry'),
(100.00, 'Grande', 'Banana com Chocolate', 5, 'Banana, chocolate, açúcar'),
(55.00, 'Média', 'Chocolate com Morango', 5, 'Chocolate, morangos, açúcar');

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doces";
