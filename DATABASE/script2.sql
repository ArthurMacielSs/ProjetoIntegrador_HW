-- 1. Criação do banco de dados
CREATE DATABASE portalSaude;
USE portalSaude;

-- 2. Criação da tabela usuario
CREATE TABLE usuario (
    usuarioID INT AUTO_INCREMENT PRIMARY KEY,
    NomeSobrenome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telefone VARCHAR(20) NOT NULL
);

-- 3. Criação da tabela sugestão
CREATE TABLE sugestao (
    sugestaoID INT AUTO_INCREMENT PRIMARY KEY,
    usuarioID INT NOT NULL,
    NomeDoenca VARCHAR(255) NOT NULL,
    Interesse TEXT NOT NULL,
    Impacto TEXT NOT NULL,
    FOREIGN KEY (usuarioID) REFERENCES User(usuarioID)
);

-- Inserção de dados de exemplo
INSERT INTO usuario (NomeSobrenome, Email, Telefone) VALUES
('João Silva', 'joao.silva@example.com', '(11) 98765-4321'),
('Maria Oliveira', 'maria.oliveira@example.com', '(21) 91234-5678');

INSERT INTO sugestao (UserID, NomeDoenca, Interesse, Impacto) VALUES
(1, 'Diabetes', 'Importante pela alta incidência na população.', 'Afeta milhões de brasileiros, especialmente idosos.'),
(2, 'Hipertensão', 'Alta prevalência e fatores de risco.', 'Causa complicações graves, como AVC e infartos.');

