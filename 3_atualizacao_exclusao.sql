-- --- COMANDOS DE UPDATE ---

-- 1. Atualizar o Status da OS 5002 para "Finalizado"
UPDATE ORDEM_SERVICO 
SET Status = 'Finalizado' 
WHERE ID_OS = 5002;

-- 2. Aumentar o preço da peça "SSD 240GB" em 10% (Inflação!)
UPDATE PECA 
SET Preco_Unitario = Preco_Unitario * 1.10 
WHERE ID_Peca = 100;

-- 3. Corrigir o telefone do cliente "Carlos Souza"
UPDATE CLIENTE 
SET Telefone = '(21) 98888-9999' 
WHERE ID_Cliente = 3;


-- --- COMANDOS DE DELETE ---
-- Atenção: A integridade referencial impede deletar quem tem vínculos!

-- 1. Deletar um item da OS (Ex: Cliente desistiu da pasta térmica na OS 5001)
DELETE FROM ITEM_OS_PECA 
WHERE ID_OS = 5001 AND ID_Peca = 103;

-- 2. Deletar a OS 5003 (Pois estava "Aberta" e o cliente desistiu do serviço, sem peças usadas)
DELETE FROM ORDEM_SERVICO 
WHERE ID_OS = 5003;

-- 3. Deletar o Técnico "Paulo Games" (Supondo que ele saiu da empresa e não tem OS vinculadas ainda)
-- Nota: Se ele tiver OS vinculada, daria erro de Constraint.
DELETE FROM TECNICO 
WHERE ID_Tecnico = 3;