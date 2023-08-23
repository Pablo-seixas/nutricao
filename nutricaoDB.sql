-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS NutricaoDB;
USE NutricaoDB;

-- Criação da tabela developers
CREATE TABLE developers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255),
    role VARCHAR(100)
);

-- Criação da tabela meals
CREATE TABLE meals (
    id INT PRIMARY KEY AUTO_INCREMENT,
    developer_id INT,
    meal_type VARCHAR(50),
    meal_description TEXT,
    meal_date DATE,
    FOREIGN KEY (developer_id) REFERENCES developers(id)
);

-- Criação da tabela ingredients
CREATE TABLE ingredients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    category VARCHAR(50),
    calories INT
);

-- Criação da tabela recipes
CREATE TABLE recipes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT
);

-- Criação da tabela recipe_ingredients
CREATE TABLE recipe_ingredients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    recipe_id INT,
    ingredient_id INT,
    quantity VARCHAR(50),
    FOREIGN KEY (recipe_id) REFERENCES recipes(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)
);

-- Criação da tabela daily_intake
CREATE TABLE daily_intake (
    id INT PRIMARY KEY AUTO_INCREMENT,
    developer_id INT,
    date DATE,
    calories_consumed INT,
    FOREIGN KEY (developer_id) REFERENCES developers(id)
);

-- Inserção de dados na tabela developers
INSERT INTO developers (name, email, role)
VALUES ('João Silva', 'joao@example.com', 'Programador'),
       ('Maria Souza', 'maria@example.com', 'Analista'),
       ('Carlos Santos', 'carlos@example.com', 'Designer'),
       ('Ana Rodrigues', 'ana@example.com', 'Gerente'),
       ('Pedro Almeida', 'pedro@example.com', 'Desenvolvedor');

-- Inserção de dados na tabela meals
INSERT INTO meals (developer_id, meal_type, meal_description, meal_date)
VALUES (1, 'Café da Manhã', 'Omelete com espinafre e torradas de grãos inteiros', '2023-08-22'),
       (1, 'Almoço', 'Frango grelhado com salada de vegetais e arroz integral', '2023-08-22'),
       (2, 'Lanche', 'Iogurte com frutas e granola', '2023-08-22');

-- Consultas...
