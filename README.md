# 🐍 Projeto de Banco de Dados - POISON STORE

Este repositório contém os scripts SQL e a documentação do projeto de banco de dados para a assistência técnica **Poison Store WEB**, desenvolvido como parte da atividade prática da disciplina de Banco de Dados.

## 📌 Descrição do Minimundo
A **Poison Store WEB** gerencia serviços de reparo de hardware (PCs, celulares e consoles). O sistema controla clientes, equipamentos, ordens de serviço, técnicos e peças utilizadas, otimizando o fluxo de atendimento da equipe interna.

## 📂 Estrutura dos Arquivos
* `1_create_tables.sql`: Script DDL para criação da estrutura do banco (Tabelas e Relacionamentos).
* `2_insert_dados.sql`: Script DML para povoar o banco com dados iniciais de teste.
* `3_consultas.sql`: Exemplos de consultas (SELECT) utilizando JOINs, filtros e ordenação.
* `4_update_delete.sql`: Scripts de manipulação de dados para atualização e exclusão com condições.

## 🚀 Como Executar
1.  Abra seu SGBD (MySQL Workbench ou pgAdmin).
2.  Crie um novo banco de dados: `CREATE DATABASE poison_store;`
3.  Execute os scripts na ordem numérica (1 a 4).

## 📊 Modelo Lógico (Resumo)
O projeto conta com as tabelas:
* **CLIENTE** (1:N) **EQUIPAMENTO**
* **EQUIPAMENTO** (1:N) **ORDEM_SERVICO**
* **TECNICO** (1:N) **ORDEM_SERVICO**
* **ORDEM_SERVICO** (N:N) **PECA** (via tabela associativa `ITEM_OS_PECA`)

---
*Projeto desenvolvido por [Seu Nome Aqui]*
