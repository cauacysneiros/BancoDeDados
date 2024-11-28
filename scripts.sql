CREATE DATABASE biblioteca;

CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    ano_publicacao INT,
    disponibilidade BOOLEAN NOT NULL
);

CREATE TABLE Emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario),
    FOREIGN KEY (id_livro) REFERENCES Livro (id_livro)
);

CREATE TABLE Reserva (
    id_reserva SERIAL PRIMARY KEY,
    data_reserva DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario),
    FOREIGN KEY (id_livro) REFERENCES Livro (id_livro)
);

INSERT INTO Usuario (nome, data_nascimento, telefone, email) VALUES
('João da Silva', '1992-05-15', '(81)9999-9999', 'joao.silva@gmail.com'),
('Maria de Souza', '2002-07-22', '(21)8888-8888', 'maria.souza@gmail.com');

INSERT INTO Funcionario (nome, cargo, telefone, email) VALUES
('Karla Maria', 'Bibliotecária', '(85)8888-9999', 'karla.maria@gmail.com'),
('Ana Luzia', 'Assistente', '(83)0000-7777', 'ana.luzia@gmail.com');

INSERT INTO Livro (titulo, autor, genero, ano_publicacao, disponibilidade) VALUES
('Dom Casmurro', 'Machado de Assis', 'Romance', 1899, TRUE),
('O Alquimista', 'Paulo Coelho', 'Ficção', 1988, FALSE);

INSERT INTO Emprestimo (data_emprestimo, data_devolucao, id_usuario, id_livro) VALUES
('2024-02-13', '2024-02-21', 1, 1),
('2024-02-15', '2024-02-23', 2, 2);

INSERT INTO Reserva (data_reserva, id_usuario, id_livro) VALUES
('2024-01-10', 1, 2),
('2024-01-12', 2, 1);

SELECT 
    u.id_usuario, 
    u.nome AS nome_usuario, 
    e.data_emprestimo, 
    e.data_devolucao, 
    l.titulo AS livro_emprestado
FROM Usuario u
JOIN Emprestimo e ON u.id_usuario = e.id_usuario
JOIN Livro l ON e.id_livro = l.id_livro;

SELECT * FROM Funcionario;

SELECT * FROM Livro WHERE disponibilidade = TRUE;

SELECT 
    r.id_reserva, 
    r.data_reserva, 
    u.nome AS nome_usuario, 
    l.titulo AS livro_reservado
FROM Reserva r
JOIN Usuario u ON r.id_usuario = u.id_usuario
JOIN Livro l ON r.id_livro = l.id_livro;

SELECT 
    f.id_funcionario, 
    f.nome AS nome_funcionario, 
    f.cargo, 
    e.id_emprestimo, 
    e.data_emprestimo, 
    l.titulo AS titulo_livro, 
    u.nome AS nome_usuario
FROM Funcionario f
JOIN Emprestimo e ON f.id_funcionario = f.id_funcionario
JOIN Livro l ON e.id_livro = l.id_livro
JOIN Usuario u ON e.id_usuario = u.id_usuario;

SELECT 
    u.nome AS nome_usuario, 
    u.email AS email_usuario,
    l.titulo AS titulo_livro,
    COALESCE(e.data_emprestimo, r.data_reserva) AS data_atividade,
    CASE 
        WHEN e.id_emprestimo IS NOT NULL THEN 'Empréstimo'
        WHEN r.id_reserva IS NOT NULL THEN 'Reserva'
    END AS tipo_atividade
FROM Usuario u
LEFT JOIN Emprestimo e ON u.id_usuario = e.id_usuario
LEFT JOIN Reserva r ON u.id_usuario = r.id_usuario AND r.id_livro = e.id_livro
JOIN Livro l ON l.id_livro = COALESCE(e.id_livro, r.id_livro);


