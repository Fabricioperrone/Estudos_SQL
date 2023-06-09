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