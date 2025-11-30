-- Inserindo CLIENTES
INSERT INTO CLIENTE (ID_Cliente, Nome, CPF, Telefone, Endereco) VALUES
(1, 'João da Silva', '12345678901', '(11) 99999-0001', 'Rua A, 123, Centro'),
(2, 'Maria Oliveira', '98765432100', '(11) 98888-0002', 'Av. Paulista, 1000'),
(3, 'Carlos Souza', '45678912300', '(21) 97777-0003', 'Rua das Flores, 50'),
(4, 'Ana Pereira', '11122233344', '(31) 96666-0004', 'Praça da Liberdade, 10');

-- Inserindo TÉCNICOS
INSERT INTO TECNICO (ID_Tecnico, Nome, Especialidade, Matricula) VALUES
(1, 'Roberto Tech', 'Hardware PC', 'MAT001'),
(2, 'Ana Mobile', 'Celulares', 'MAT002'),
(3, 'Paulo Games', 'Consoles', 'MAT003');

-- Inserindo PEÇAS
INSERT INTO PECA (ID_Peca, Nome_Peca, Descricao, Preco_Unitario, Qtd_Estoque) VALUES
(100, 'SSD 240GB', 'Kingston A400 SATA', 150.00, 10),
(101, 'Tela iPhone 11', 'Display Original Apple', 400.00, 5),
(102, 'Fonte ATX 500W', 'Corsair 80 Plus', 300.00, 8),
(103, 'Pasta Térmica', 'Prata 5g', 50.00, 50),
(104, 'Controle PS5', 'DualSense Branco', 350.00, 15);

-- Inserindo EQUIPAMENTOS
INSERT INTO EQUIPAMENTO (ID_Equipamento, ID_Cliente, Tipo, Marca, Modelo, Num_Serie) VALUES
(10, 1, 'Notebook', 'Dell', 'Inspiron 15', 'DELL123XYZ'),
(11, 2, 'Celular', 'Apple', 'iPhone 11', 'IMEI998877'),
(12, 3, 'Desktop', 'Custom', 'Gamer i5', 'SN00001'),
(13, 4, 'Console', 'Sony', 'PlayStation 5', 'PS5-998877');

-- Inserindo ORDENS DE SERVIÇO (OS)
INSERT INTO ORDEM_SERVICO (ID_OS, ID_Equipamento, ID_Tecnico, Data_Abertura, Status, Queixa_Cliente, Laudo_Tecnico, Valor_Total) VALUES
(5001, 10, 1, '2023-11-20', 'Finalizado', 'Lentidão e esquentando', 'Limpeza e troca de pasta térmica + SSD', 350.00),
(5002, 11, 2, '2023-11-21', 'Em Reparo', 'Tela quebrada', 'Troca de frontal necessária', 400.00),
(5003, 12, 1, '2023-11-22', 'Aberto', 'Não liga', NULL, 0.00),
(5004, 13, 3, '2023-11-23', 'Aguardando Peça', 'Drift no analógico', 'Troca de potenciômetro', 150.00);

-- Inserindo ITENS DA OS
INSERT INTO ITEM_OS_PECA (ID_OS, ID_Peca, Quantidade, Valor_Cobrado) VALUES
(5001, 103, 1, 50.00),  -- Pasta Térmica na OS 5001
(5001, 100, 1, 150.00), -- SSD na OS 5001
(5002, 101, 1, 400.00); -- Tela na OS 5002
