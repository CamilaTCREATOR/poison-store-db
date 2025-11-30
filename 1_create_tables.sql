-- --- SCRIPT DE CRIAÇÃO (DDL) ---
-- Autor: Camila de Lima
-- Projeto: Poison Store WEB

-- 1. Tabela CLIENTE
CREATE TABLE CLIENTE (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    CPF CHAR(11),
    Telefone VARCHAR(20),
    Endereco VARCHAR(200)
);

-- 2. Tabela TECNICO
CREATE TABLE TECNICO (
    ID_Tecnico INT PRIMARY KEY,
    Nome VARCHAR(100),
    Especialidade VARCHAR(50),
    Matricula VARCHAR(20)
);

-- 3. Tabela PECA
CREATE TABLE PECA (
    ID_Peca INT PRIMARY KEY,
    Nome_Peca VARCHAR(100),
    Descricao VARCHAR(200),
    Preco_Unitario DECIMAL(10, 2),
    Qtd_Estoque INT
);

-- 4. Tabela EQUIPAMENTO (Depende de Cliente)
CREATE TABLE EQUIPAMENTO (
    ID_Equipamento INT PRIMARY KEY,
    ID_Cliente INT,
    Tipo VARCHAR(50), -- Ex: PC, Celular
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Num_Serie VARCHAR(50),
    FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE(ID_Cliente)
);

-- 5. Tabela ORDEM_SERVICO (Depende de Equipamento e Tecnico)
CREATE TABLE ORDEM_SERVICO (
    ID_OS INT PRIMARY KEY,
    ID_Equipamento INT,
    ID_Tecnico INT,
    Data_Abertura DATE,
    Status VARCHAR(30), -- Ex: Aberto, Em Reparo, Finalizado
    Queixa_Cliente TEXT,
    Laudo_Tecnico TEXT,
    Valor_Total DECIMAL(10,