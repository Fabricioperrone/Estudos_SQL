-- Triggers-Definição-Sintaxe e criação de um trigger BEFORE INSERT
-- TRIGGERS
-- Tradução: gatilho
-- Associado a uma tabela.
-- procedimento invocado quando um procedimento DML é executado. 
-- DML (INSERT, UPDATE e DELETE)

-- Usos do Trigger:
-- Verificção de integridade de dados
-- Validação dos dados
-- Rastreamento e registro de logs de atividades nas tabelas 
-- Arquivamento de registros excluídos

-- Um Trigger é associado a uma tabela
-- Armazenado no BD como um arquivo separado
-- Não são chamados separadamente, são invocados automaticamente

-- Sintaxe dos Triggers
-- CREATE TRIGGER nome timing operação
-- ON tabela
-- FOR EACH ROW
-- declarações

-- timing = BEFORE | AFTER
-- operação  = INSERT | UPDATE | DELETE

-- Criando tabela para aplicar Trigger
CREATE TABLE produtos (
idProduto INT NOT NULL  AUTO_INCREMENT,
Nome_Produto VARCHAR(45) NULL,
Preco_Normal DECIMAL(10,2) NULL,
Preco_Desconto DECIMAL(10,2) NULL,
PRIMARY KEY (idProduto)
); 

SELECT * FROM produtos;

-- Criando o Trigger
CREATE TRIGGER tr_desconto BEFORE INSERT
ON produto
FOR EACH ROW
SET NEW.Preco_Desconto = (NEW.Preco_Normal * 0.90);

INSERT INTO produto (Nome_Produto, Preco_Normal) 
VALUES ('Monitor', 350.00);

INSERT INTO produto (Nome_Produto, Preco_Normal) 
VALUES ('DVD', 1.00), ('Pendrive', 18.00);

select * from produto;

alter table produtos rename produto;
