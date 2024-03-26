BEGIN;


-- CRIAR TABELAS
CREATE TABLE cidades (
    id INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(60),
    populacao INTEGER
);

CREATE TABLE alunos (
    id INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(60),
    data_nasc DATE,
    cidade_id INTEGER,
    FOREIGN KEY (cidade_id) REFERENCES cidades(id)
);

-- POPULAR CIDADES

insert into Cidades values (1, 'Arraial dos Tucanos', 42632);
insert into Cidades values (2, 'Springfield', 13820);
insert into Cidades values (3, 'Hill Valley', 27383);
insert into Cidades values (4, 'Coruscant', 19138);
insert into Cidades values (5, 'Minas Tirith', 31394);

-- POPULAR ALUNOS

insert into Alunos values (1, 'Immanuel Kant', '1724-04-22', 4);
insert into Alunos values (2, 'Alan Turing', NULL, NULL);
insert into Alunos values (3, 'George Boole', '1912-06-23', 3);
insert into Alunos values (4, 'Lynn Margulis', '2002-01-01', 1);
insert into Alunos values (5, 'Nicola Tesla', '1991-08-12', 3);
insert into Alunos values (6, 'Ada Lovelace', '1978-05-28', 4);
insert into Alunos values (7, 'Claude Shannon', '1982-10-15', 3);
insert into Alunos values (8, 'Charles Darwin', '2010-02-06', NULL);
insert into Alunos values (9, 'Marie Curie', '2007-07-12', 3);
insert into Alunos values (10, 'Carl Sagan', '2000-11-20', 1);
insert into Alunos values (11, 'Tim Berners-Lee', '1973-12-05', 4);
insert into Alunos values (12, 'Richard Feynman', '1982-09-12', 1);

-- INNER JOIN

SELECT *
from alunos inner
join cidades
on cidades.id = alunos.id;
