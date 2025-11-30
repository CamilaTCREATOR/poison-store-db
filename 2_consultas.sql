-- 1. Listar todas as OS com nome do Cliente, Equipamento e Técnico responsável (JOIN)
SELECT 
    OS.ID_OS, 
    C.Nome AS Cliente, 
    E.Modelo AS Equipamento, 
    T.Nome AS Tecnico, 
    OS.Status
FROM ORDEM_SERVICO OS
JOIN EQUIPAMENTO E ON OS.ID_Equipamento = E.ID_Equipamento
JOIN CLIENTE C ON E.ID_Cliente = C.ID_Cliente
JOIN TECNICO T ON OS.ID_Tecnico = T.ID_Tecnico;

-- 2. Listar apenas OS que estão "Em Reparo" ou "Aberto" (WHERE)
SELECT ID_OS, Data_Abertura, Status, Queixa_Cliente 
FROM ORDEM_SERVICO 
WHERE Status IN ('Em Reparo', 'Aberto');

-- 3. Listar as peças com estoque baixo (menor que 10), ordenadas pelo preço (ORDER BY e WHERE)
SELECT Nome_Peca, Qtd_Estoque, Preco_Unitario 
FROM PECA 
WHERE Qtd_Estoque < 10 
ORDER BY Preco_Unitario DESC;

-- 4. Mostrar o valor total gasto pelo cliente "João da Silva" (SUM, JOIN e GROUP BY)
SELECT C.Nome, SUM(OS.Valor_Total) AS Total_Gasto
FROM ORDEM_SERVICO OS
JOIN EQUIPAMENTO E ON OS.ID_Equipamento = E.ID_Equipamento
JOIN CLIENTE C ON E.ID_Cliente = C.ID_Cliente
WHERE C.Nome = 'João da Silva'
GROUP BY C.Nome;