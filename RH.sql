CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores (
  id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cargo VARCHAR(255),
  departamento VARCHAR(255),
  salario DECIMAL(10,2),
  data_de_admissao DATE,
  data_de_nascimento DATE
);

INSERT INTO colaboradores (nome, cargo, departamento, salario, data_de_admissao, data_de_nascimento) VALUES 
("João Silva", "Analista de Sistemas", "TI", 4000, "2020-01-01", "1980-05-20"),
("Maria Souza", "Gerente de Marketing", "Marketing", 5000, "2010-03-15", "1975-02-10"),
("Lucas Pereira", "Desenvolvedor Front-end", "TI", 2500, "2022-02-01", "1992-12-05"),
("Ana Santos", "Analista de RH", "RH", 1900, "2019-07-10", "1986-08-25"),
("Pedro Rodrigues", "Analista Financeiro", "Financeiro", 3500, "2018-05-01", "1989-11-30");

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 5500 WHERE id_colaborador = 2;
