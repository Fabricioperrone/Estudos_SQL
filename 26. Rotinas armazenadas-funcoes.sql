-- Rotinas armazenadas - funções
-- São dois tipos de rotinas armazenadas, parte de especificação SQL.
-- São um pouco similares, mas com aplicações diferentes.
-- São invocadas de forma diferentes também.
-- ( CALL x declaração )
---------------------------------------------------------------------
-- Funções --
-- Uma função é usada para gerar um valor que pode ser usado em uma expressão.
-- O valor geralmente é baseado em um ou mais parâmetros fornecidos à função.
-- É excutada como parte de uma expressão.
-- Sintaxe de uma função --
-- create function  nome_funcao (parâmetros)
-- returns tipo_dados
-- código_da_função

-- Invocando uma função --
-- select nome_função(parâmetros);
-- Hands on
create function fn_teste (a DECIMAL(10,2), b int)
returns int
return a * b;

-- Invocando a função
select fn_teste(2.5,4) as Resultado;

-- 2º Exemplo de código
select Nome_livro, fn_teste(Preco_livro, 6) AS 'Preço de 6 unidades'
from tbl_livro
where ID_Livro = 2;

-- Excluindo uma função
-- DROP FUNCTION fn_teste;