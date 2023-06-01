-- Blocos BEGIN...END em funções e Procedimento Armazenados
-- Blocos BEGIN...END
-- São "conteiners" usados para delimitar
-- blocos de comandos a serem executados
-- pela função ou Stored Procedure
-- Cada declaração aninhada possui um delimitador (;)
-- Um bloco BEGIN  pode ser aninhado dentro de outros blocos.
----------------------------------------------------------------------
-- Porém o delimitador ; pode ser problemático pois, ao ser encontrado
-- em um procedimento ou função, a finaliza imediatamente. 
-- É uma espécie de ALIAS para o comando GO.
-- Devemos então mudar esse "atalho" e, para isso, usamos o comando:
-- DELIMITER para criar rotinas  com declarações  compostas.
----------------------------------------------------------------------
-- Criando função
DELIMITER $$
create function aumenta_Preco (preco DECIMAL(10,2), taxa DECIMAL(10,2))
returns varchar(5)
begin
	return preco + preco * taxa /100;
end$$
DELIMITER ;
DROP function aumenta_Preço;

select aumenta_Preco(50.00, 10.00) AS Resultado;
---------------------------------------------------------------------
-- Criar Procedimento 
DELIMITER //
create procedure verPreço (varLivro smallint)
begin
   select concat('O preço do livro é ', Preco_Livro) AS Preço
   from tbl_Livro
   where ID_Livro = varLivro;
   select 'Procedimento executado com sucesso!';
end//
DELIMITER ;
-- Invocando o Procedimento
CALL verPreço(3);
