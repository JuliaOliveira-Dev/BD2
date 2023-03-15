CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(255),
  preco DECIMAL(10,2),
  estoque INT
);

INSERT INTO produtos (id, nome, descricao, preco, estoque)
VALUES 
  (1, 'Mouse Gamer Redragon Cobr ', 'Mouse Chroma RGB, 12400DPI, 7 Botões', 155.99, 20),
  (2, 'Smartphone Samsung Galaxy S21', 'Smartphone com tela de 6,2 polegadas e câmera tripla', 3999.99, 15),
  (3, 'Smart TV LG 55 polegadas', 'Smart TV com resolução 4K e Wi-Fi integrado', 5299.99, 10),
  (4, 'Fone de ouvido Astro A40', 'Fone de ouvido com solução de áudio premium para atletas de e-sport', 1529.99, 50),
  (5, 'Console Playstation 5', 'Console de Video Game de última geração', 3999.99, 30),
  (6, 'Mouse sem fio Logitech M170', 'Mouse sem fio', 49.99, 100),
  (7, 'Teclado gamer HyperX Alloy FPS', 'Teclado mecânico com iluminação LED', 799.99, 5),
  (8, 'Monitor Dell 27 polegadas', 'Monitor com resolução Full HD e tempo de resposta de 1ms', 1499.99, 8);
  
  SELECT * FROM produtos WHERE preco > 500;
  
  SELECT * FROM produtos WHERE preco < 500;
