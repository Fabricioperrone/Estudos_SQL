-- Excluir registros
-- Sintaxe:
show databases;
use db_Biblioteca;

delete from  tabela where coluna =  valor;

-- Ex:
delete from autores where  id_autor = 2;
-- Obs: Sempre use a cláusula WHERE para evitar a perda de dados de uma tabela!

-- Exemplo : elimando um item da tabela
-- select * from table tbl_incremento;
-- where Codigo = 90;
--
-- Zerando uma tabela inteira
-- TRUNCATE table tbl_teste_incremento;