-- Pode-se dar um nome  diferente  a uma coluna
-- ou  em uma consulta
-- Exemplo
select Nome_Livro 
as Livro
from tbl_Livro;

-- Renomeando duas colunas 
select Nome_Livro AS Livros, Preco_livro as Preço
from tbl_Livro