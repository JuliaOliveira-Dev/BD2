
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

INSERT INTO tb_categorias (id, nome, descricao) VALUES
(1, 'Salgadas', 'Pizzas com sabores salgados'),
(2, 'Doces', 'Pizzas com sabores doces'),
(3, 'Vegetarianas', 'Pizzas sem carne');

CREATE TABLE tb_pizzas (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    preco DECIMAL(8,2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (id, nome, descricao, preco, categoria_id) VALUES
(1, 'Calabresa', 'Calabresa, mussarela e cebola', 40.00, 1),
(2, 'Frango com Catupiry', 'Frango, Catupiry e mussarela', 50.00, 1),
(3, 'Marguerita', 'Molho de tomate, mussarela e manjericão', 45.00, 1),
(4, 'Brigadeiro', 'Brigadeiro, granulado e leite condensado', 35.00, 2),
(5, 'Banana com Canela', 'Banana, canela e açúcar', 30.00, 2),
(6, 'Quatro Queijos', 'Mussarela, provolone, gorgonzola e parmesão', 60.00, 1),
(7, 'Palmito', 'Palmito, mussarela e azeitonas', 45.00, 1),
(8, 'Vegetariana', 'Molho de tomate, mussarela, berinjela, abobrinha e pimentão', 55.00, 3);

SELECT nome, preco FROM tb_pizzas WHERE preco > 45.00;

SELECT nome, preco FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT nome, preco FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_categorias.nome AS categoria, tb_pizzas.preco
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome, tb_categorias.nome, tb_pizzas.preco as categoria
FROM tb_pizzas
INNER JOIN tb_categorias  ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Doces';

