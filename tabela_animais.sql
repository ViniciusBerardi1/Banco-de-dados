BEGIN;

-- CIRAR TABELA ANIMAIS

CREATE TABLE Animais (
    id INT,
    nome VARCHAR(50),
    nasc DATE,
    peso DECIMAL(10,2),
    cor VARCHAR(50)
);

-- POPULAR TABELA ANIMAIS

INSERT INTO Animais VALUES (01, 'Ágata', 		'2015-04-09', 13.9, 'branco');
INSERT INTO Animais VALUES (02, 'Félix', 		'2016-06-06', 14.3, 'preto');
INSERT INTO Animais VALUES (03, 'Tom', 			'2013-02-08', 11.2, 'azul');
INSERT INTO Animais VALUES (04, 'Garfield', 	'2015-07-06', 17.1, 'laranja');
INSERT INTO Animais VALUES (05, 'Frajola', 		'2013-08-01', 13.7, 'preto');
INSERT INTO Animais VALUES (06, 'Manda Chuva', 	'2012-02-03', 12.3, 'amarelo');
INSERT INTO Animais VALUES (07, 'Snowball', 	'2014-02-03', 13.2, 'preto');
INSERT INTO Animais VALUES (08, 'Ágata', 		'2015-04-09', 13.9, 'branco');
INSERT INTO Animais VALUES (09, 'Gato de Botas','2012-12-10', 11.6, 'amarelo');
INSERT INTO Animais VALUES (10, 'Kitty', 		'2020-04-06', 11.6, 'amarelo');
INSERT INTO Animais VALUES (11, 'Mitu', 		'2013-02-04', 17.9, 'branco');
INSERT INTO Animais VALUES (12, 'Pluto', 		'2012-01-03', 12.3, 'amarelo');
INSERT INTO Animais VALUES (13, 'Pateta', 		'2015-05-01', 17.7, 'preto');
INSERT INTO Animais VALUES (14, 'Snoopy', 		'2013-07-02', 18.2, 'branco');
INSERT INTO Animais VALUES (15, 'Rex', 			'2019-11-03', 19.7, 'beje');
INSERT INTO Animais VALUES (16, 'Bidu', 		'2012-09-08', 12.4, 'azul');
INSERT INTO Animais VALUES (17, 'Dum Dum', 		'2015-04-06', 11.2, 'laranja');
INSERT INTO Animais VALUES (18, 'Muttley', 		'2011-02-03', 14.3, 'laranja');
INSERT INTO Animais VALUES (19, 'Scooby', 		'2012-01-02', 19.9, 'marrom');
INSERT INTO Animais VALUES (20, 'Rufus', 		'2014-04-05', 19.7, 'branco');
INSERT INTO Animais VALUES (21, 'Rex', 			'2021-08-19', 19.7, 'branco');
INSERT INTO Animais VALUES (22, 'Cavalo', 		'2021-08-19', 12,3, 'preto');
INSERT INTO Animais VALUES (23, 'Baleia', 		'2021-08-19', 21,3, 'preto');

-- EXERCICIOS

UPDATE Animais
SET nome = 'Goofy'
WHERE nome = 'Pateta';

UPDATE Animais
SET peso = 10.0
WHERE nome = 'Garfield';

UPDATE Animais
SET cor = 'laranja'
WHERE nome IN ('Félix', 'Garfield', 'Frajola', 'Gato de Botas');

ALTER TABLE Animais
ADD COLUMN altura DECIMAL(10,2);

ALTER TABLE Animais
ADD COLUMN observacao VARCHAR(255);

DELETE FROM Animais
WHERE peso > 20.0;

DELETE FROM Animais
WHERE nome LIKE 'C%';

ALTER TABLE Animais
DROP COLUMN cor;

ALTER TABLE Animais
MODIFY COLUMN nome VARCHAR(80);

DELETE FROM Animais
WHERE nome IN ('Félix', 'Garfield', 'Frajola', 'Gato de Botas', 'Mitu', 'Dum Dum', 'Muttley', 'Scooby', 'Pluto', 'Snoopy');

ALTER TABLE Animais
DROP COLUMN nasc;

DELETE FROM Animais;
