-- Atualizar registros
-- Obs: caso não seja usado à cláusura WHERE para filtrar os
-- registros, todos os dados da coluna serão alterados
-- Atualizar regsitros exemplo:

update tbl_livro
set Nome_Livro = 'SSH, O Shell Seguro'
WHERE ID_Livro = 2;

select ID_Livro, Nome_Livro -- cosultando a tabela tbl_livro pelo ID_Livro e Nome_Livro
from tbl_livro;