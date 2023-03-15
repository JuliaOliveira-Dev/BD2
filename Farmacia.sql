CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(200)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos para tratamento de saúde'),
('Higiene', 'Produtos para higiene pessoal'),
('Cosméticos', 'Produtos para cuidados com a pele e beleza'),
('Perfumaria', 'Perfumes e fragrâncias'),
('Nutrição', 'Suplementos e vitaminas');

CREATE TABLE tb_produtos (
    id_produto INT produtosAUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(200),
    preco DECIMAL(10,2),
    quantidade INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome, descricao, preco, quantidade, id_categoria) VALUES
('Dipirona', 'Analgésico e antitérmico', 3.50, 100, 1),
('Paracetamol', 'Analgésico e antitérmico', 4.80, 80, 1),
('Sabonete líquido', 'Limpeza e hidratação da pele', 12.90, 50, 2),
('Desodorante aerosol', 'Proteção contra odores', 7.99, 30, 2),
('Creme para rugas', 'Cuidado com a pele', 55.00, 20, 3),
('Shampoo anticaspa', 'Tratamento da caspa', 18.50, 40, 3),
('Perfume feminino', 'Fragrância floral', 89.90, 10, 4),
('Vitamina C efervescente', 'Suplemento vitamínico', 25.00, 60, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.nome, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Cosméticos';