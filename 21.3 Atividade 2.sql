CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	tipo VARCHAR(30) NOT NULL PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    especial BOOLEAN
);

drop table tb_categorias;


CREATE TABLE tb_pizzas(
	preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    sabor VARCHAR(255) NOT NULL,
    FOREIGN KEY (tipo) REFERENCES tb_categorias(tipo)
);


INSERT INTO tb_categorias (tipo, descricao, especial) 
VALUES('Tradicional', 'Pizzas clássicas e populares', FALSE),
('Vegetariana', 'Pizzas feitas com ingredientes exclusivamente vegetais', FALSE),
('Frutos do Mar', 'Pizzas com frutos do mar frescos', FALSE),
('Especial do Chef', 'Pizzas exclusivas criadas pelo chef', TRUE),
('Doces', 'Pizzas com coberturas doces', FALSE);


INSERT INTO tb_pizzas (preco, tamanho, nome, tipo, sabor) 
VALUES(20.00, 'Média', 'Margherita', 'Tradicional', 'Molho de tomate, mussarela, manjericão'),
(125.00, 'Grande', 'Calabresa', 'Tradicional', 'Molho de tomate, calabresa, cebola, mussarela'),
(30.00, 'Média', 'Vegetariana', 'Vegetariana', 'Molho de tomate, pimentão, cebola, cogumelos, azeitonas'),
(90.00, 'Grande', 'Frutos do Mar', 'Frutos do Mar', 'Molho de tomate, camarão, lula, mexilhão, mussarela'),
(40.00, 'Pequena', 'Especial do Chef', 'Especial do Chef', 'Molho especial do chef, ingredientes exclusivos'),
(45.00, 'Média', 'Quatro Queijos', 'Tradicional', 'Molho de tomate, mussarela, parmesão, gorgonzola, catupiry'),
(100.00, 'Grande', 'Banana com Chocolate', 'Doces', 'Banana, chocolate, açúcar'),
(55.00, 'Média', 'Chocolate com Morango', 'Doces', 'Chocolate, morangos, açúcar');

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.tipo = tb_categorias.tipo;


SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.tipo = tb_categorias.tipo
WHERE tb_pizzas.tipo = "Doces";