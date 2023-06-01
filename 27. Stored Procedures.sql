-- Procedimentos Armazenados - Básico - (Stored Procedures)
-- Stored Procedures
-- Um procedimento armazenado é uma sub-rotina
-- dispinível para para aplicações que acessam
-- sistemas de banco de dados relacionais
-- Porem ser usadas para validação de dados,
-- controle de acesso, execuções de declarações
-- SQL complexas e outras situações.
-- Desde a versão 5.0 MySQL suporta a execução 
-- de STORED PROCEDURES
-- Sintaxe de criação do Procedimento 
-- CREATE PROCEDURE nome_procedimento(parâmetros)
-- declarações;

-- Invocando o procedimento
-- CALL nome_procedimento(parâmetros);
-- Exemplo:
-- Criar procedimento
create procedure verPreço(varLivro smallint)
select concat('O preço é ', Preco_livro) AS Preço
from tbl_livro
where ID_Livro = varLivro;

-- Invocando procedimento
CALL verPreço(3);

-- Excluindo Procedimento
-- DROP PROCEDURE nome_procedimento;
DROP PROCEDURE verPreço;