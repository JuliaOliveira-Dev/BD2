CREATE DATABASE db_estudantes;

USE db_estudantes;

CREATE TABLE estudantes (
  id_estudante INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  curso VARCHAR(100) NOT NULL,
  nota DECIMAL(3,2) NOT NULL,
  PRIMARY KEY (id_estudante)
);

INSERT INTO estudantes (nome, idade, curso, nota) VALUES
  ('Maria Silva', 18, 'Engenharia de Computação', 8.5),
  ('João Santos', 19, 'Direito', 7.8),
  ('Carla Sousa', 20, 'Medicina', 9.2),
  ('Pedro Oliveira', 21, 'Arquitetura', 6.3),
  ('Mariana Pereira', 22, 'Psicologia', 7.5),
  ('Lucas Ferreira', 23, 'Engenharia Civil', 8.1),
  ('Larissa Costa', 24, 'Administração', 7.9),
  ('Rodrigo Almeida', 25, 'Ciência da Computação', 6.7);
  
  SELECT * FROM estudantes WHERE nota > 7.0;
  
  SELECT * FROM estudantes WHERE nota < 7.0;
  
  UPDATE estudantes SET nota = 8.0 WHERE id_estudante = 2;



	
  

