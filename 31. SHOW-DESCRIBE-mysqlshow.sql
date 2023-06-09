-- Comandos SHOW, DESCRIBE e mysqlshow
-- Comando para conectar mysql (ubuntu) 
-- Digite no terminal > mysql -u root -p 
-- Entre com sua sua senha
-- Digite help show, para exibir uma lista de comandos show no mysql
-- Exibe a listagem de banco de dados
show databases;
-- Escolha um database
use db_Biblioteca;

-- Exibe todas as tabelas do banco de dados
show tables;

-- Exibe o código usado para criar tabela. 
-- Exemplo:
show create table tbl_livro;

-- Exibe código usado para criar um procedure (procedimento)
show create PROCEDURE verPreço;

-- Exibe código usado para criar uma FUNCTION
show create FUNCTION calcula_desconto;

-- Exibe colunas de uma tabela
show  full columns from tbl_editoras;

-- Filtrando informações de uma tabela
show columns from tbl_livro;

-- Filtro com filtro para letra (I)
show columns from tbl_livro like 'I%';

-- Filtra consulta por tipo
show columns from tbl_livro where  type like 'varchar%'; -- > espressão regular: traz qualquer varchar 
-- independente do seu tamanho. Type (tipo) like (como) varchar. 

-- Visualizar permissões de usuário no SQL
show GRANTS FOR root@localhost;

-- Comando DESCRIBE, nada mais é do que um atalho para esse comando: 
-- show columns from tbl_livro
DESCRIBE tbl_livro;
-- Ou
DESC tbl_livro;

-- mysqlshow
-- Terminal Ubuntu
-- Infos sobre mysqlshow comando -> man mysqlshow
-- Exibe todos os BDs
-- mysqlshow -u root -p
-- exibe tabelas de um banco de dados  mysqlshow -u root -p db_biblioteca
-- exibe campos da tabela,  mysqlshow -u root -p db_biblioteca tbl_autores %
-- Visualizar as tabelas contando as colunas e linha
-- mysqlshow -vv -u root -p db_biblioteca 't*'
-- vv: Traga a contagem de colunas e linhas. 
-- Primeiro V: é o número de colunas
-- Segundo V: é o número de linhas
-- espressão regular 't*': tragam todas a infos sobre as tabelas que comecem com a letra 'T'
-- Trazendo consulta de uma específica coluna
-- mysqlshow -u root -p db_Bibiloteca tbl_autores ID_Autor
