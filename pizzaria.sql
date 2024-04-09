CREATE TABLE embalagem (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    material VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL
);

CREATE TABLE receita (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    instrucoes TEXT NOT NULL,
    autor VARCHAR(100) NOT NULL
);

CREATE TABLE pizzaiolo (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE pizza (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    sabor VARCHAR(100) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    descricao TEXT,
    tamanho VARCHAR(20) NOT NULL,
    ingredientes TEXT,
    embalagem_id INT,
    receita_id INT,
    pizzaiolo_id INT,
    FOREIGN KEY (embalagem_id) REFERENCES embalagem(ID),
    FOREIGN KEY (receita_id) REFERENCES receita(ID),
    FOREIGN KEY (pizzaiolo_id) REFERENCES pizzaiolo(ID)
);

CREATE TABLE ingrediente (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE pizza_ingrediente (
    pizza_id INT,
    ingrediente_id INT,
    FOREIGN KEY (pizza_id) REFERENCES pizza(ID),
    FOREIGN KEY (ingrediente_id) REFERENCES ingrediente(ID),
    PRIMARY KEY (pizza_id, ingrediente_id)
);
