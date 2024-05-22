-- 1. Criação do banco de dados
CREATE DATABASE formularioDB;
USE formularioDB;

-- 2. Criação da tabela usuario
CREATE TABLE usuario (
    usuarioID INT AUTO_INCREMENT PRIMARY KEY,
    NomeSobrenome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telefone VARCHAR(20) NOT NULL
);

-- 3. Criação da tabela Mensagem
CREATE TABLE mensagem (
    mensagemID INT AUTO_INCREMENT PRIMARY KEY,
    usuarioID INT NOT NULL,
    Mensagem TEXT NOT NULL,
    DataEnvio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuarioID) REFERENCES User(usuarioID)
);

-- Inserção de dados de exemplo
INSERT INTO usuario (NomeSobrenome, Email, Telefone) VALUES
('João Silva', 'joao.silva@example.com', '(11) 98765-4321'),
('Maria Oliveira', 'maria.oliveira@example.com', '(21) 91234-5678');

INSERT INTO mensagem (usuarioID, Mensagem) VALUES
(1, 'Olá, gostaria de saber mais sobre o projeto.'),
(2, 'Tenho interesse em participar.');
