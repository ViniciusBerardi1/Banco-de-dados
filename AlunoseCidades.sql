CREATE TABLE Cidades (
    id INT,
    nome VARCHAR(60) NOT NULL,
    populacao INT
);
INSERT INTO Cidades (id, nome, populacao) VALUES 
(1, 'Arraial dos Tucanos', 42632),
(2, 'Springfield', 13820),
(3, 'Hill Valley', 27383),
(4, 'Coruscant', 19138),
(5, 'Minas Tirith', 31394);


CREATE TABLE Alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE,
    cidade_id INT,
    FOREIGN KEY (cidade_id) REFERENCES Cidades(id)
);

INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES 
(1, 'Immanuel Kant', '1724-04-22', 4),
(2, 'Alan Turing', '1912-06-23', 3),
(3, 'Alon Turing', '1912-06-23', 3),
(4, 'Lynn Margulis', '1991-08-12', 1),
(5, 'Nicola Tesla', '1976-05-28', 4),
(6, 'Na lavelaca', '2970-05-28', NULL),
(7, 'Claude Shannon', '1982-10-15', 9),
(8, 'Charles Darwin', '2010-02-06', 9),
(9, 'Marie Curie', '2002-01-18', 3),
(10, 'Marie Suran', '2002-01-18', 3),
(11, 'Tim Berners-Lee', '1973-12-05', 4),
(12, 'Richard Feynman', '1982-09-12', 1);

-- 1
SELECT * FROM Alunos INNER JOIN Cidades ON Alunos.cidade_id = Cidades.id;

-- 2
SELECT * FROM Alunos LEFT JOIN Cidades ON Alunos.cidade_id = Cidades.id;

-- 3
SELECT * FROM Alunos RIGHT JOIN Cidades ON Alunos.cidade_id = Cidades.id;

-- 4
SELECT nome AS "Nome", cidade AS "cidade" FROM Alunos;
