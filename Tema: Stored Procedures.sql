CREATE TABLE Alunos (
    AlunoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    CursoID INT,
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    ProfessorID INT,
    FOREIGN KEY (ProfessorID) REFERENCES Professores(ProfessorID)
);

CREATE TABLE Professores (
    ProfessorID INT PRIMARY KEY,
    Nome VARCHAR(100)
);

-- Criar stored procedure para inserir cursos
DELIMITER //
CREATE PROCEDURE InserirCurso(
    IN nome_curso VARCHAR(100),
    IN professor_nome VARCHAR(100)
)
BEGIN
    DECLARE professor_id INT;
    
    -- Verificar se o professor já existe
    SELECT ProfessorID INTO professor_id FROM Professores WHERE Nome = professor_nome;
    
    -- Se o professor não existe, insira-o na tabela de professores
    IF professor_id IS NULL THEN
        INSERT INTO Professores (Nome) VALUES (professor_nome);
        SET professor_id = LAST_INSERT_ID();
    END IF;
    
    -- Inserir o curso na tabela de cursos
    INSERT INTO Cursos (Nome, ProfessorID) VALUES (nome_curso, professor_id);
END //
DELIMITER ;

-- Criar stored procedure para selecionar cursos
DELIMITER //
CREATE PROCEDURE SelecionarCursos()
BEGIN
    SELECT c.Nome AS Curso, p.Nome AS Professor
    FROM Cursos c
    INNER JOIN Professores p ON c.ProfessorID = p.ProfessorID;
END //
DELIMITER ;

-- Criar função para gerar endereço de e-mail do aluno
DELIMITER //
CREATE FUNCTION GerarEmail(nome_aluno VARCHAR(100), sobrenome_aluno VARCHAR(100))
RETURNS VARCHAR(100)
BEGIN
    DECLARE email VARCHAR(100);
    
    SET email = CONCAT(nome_aluno, '.', sobrenome_aluno, '@dominio.com');
    
    RETURN email;
END //
DELIMITER ;
