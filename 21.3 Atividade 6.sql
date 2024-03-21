CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;


CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);


CREATE TABLE tb_cursos (
    curso_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    carga_horaria INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);


INSERT INTO tb_categorias (nome, descricao) 
VALUES('Programação', 'Cursos de programação'),
('Marketing Digital', 'Cursos de marketing online'),
('Design Gráfico', 'Cursos de design gráfico'),
('Finanças', 'Cursos sobre finanças pessoais'),
('Idiomas', 'Cursos de idiomas estrangeiros');


INSERT INTO tb_cursos (nome, preco, carga_horaria, categoria_id) 
VALUES('Curso de Python', 600.00, 40, 1),
('Curso de Marketing', 800.00, 60, 2),
('Curso de Photoshop', 700.00, 50, 3),
('Curso de Finanças', 550.00, 30, 4),
('Curso de Inglês', 900.00, 45, 5),
('Curso de Java', 650.00, 40, 1),
('Curso de SEO', 750.00, 55, 2),
('Curso de UI/UX Design', 850.00, 60, 3);


SELECT * FROM tb_cursos WHERE preco > 500;


SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;


SELECT * FROM tb_cursos WHERE nome LIKE '%J%';


SELECT * FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_cursos.categoria_id;


SELECT * FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_cursos.categoria_id
WHERE tb_categorias.nome = 'Java';
