-- VIEWS -- 
-- Uma Exibição (Visão) é uma tabela virtual baseada no
-- conjunto de resultados de uma consulta SQL

-- Contém linhas e colunas como uma tabela real, e pode
-- receber comandos como declarações JOIN, WHERE e funções como uma
-- tabela normal

-- Mostra sempre resultados de dados atualizados, pois o motor do banco
-- de dados recria os dados toda vez que um usuário consulta a visão
-- Comando:
-- create view [Nome_Exbição]
-- as select colunas
-- from tabela
-- where condições;
-- Exemplo:
create view vw_LivrosAutores
as select tbl_livro.Nome_Livro AS Livro,
tbl_autores.Nome_Autor AS Autor
from tbl_livro
inner join tbl_autores
on tbl_livro.ID_Autor = tbl_autores.ID_Autor;
-- Consultando através da VIEW
select Livro, Autor
from vw_LivrosAutores
order by Autor;

-- Alterando VIEW
 alter view vw_LivrosAutores AS 
select tbl_livro.Nome_Livro AS Livro, tbl_autores.Nome_Autor
AS Autor, Preco_Livro AS Valor
from tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

-- Uso
select * from vw_LivrosAutores; 

select * 
from vw_LivrosAutores
order by Valor;

-- Exclusão de uma visão:
-- DROP VIEW vw_LivrosAutores;
