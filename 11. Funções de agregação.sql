-- Funções de agregação
-- Exemplos:
select count(*) AS totalAutores from tbl_autores; -- retorna número de registros
select count(distinct id_Autor) from tbl_livro; -- conta quantos registros tem na tabela livro com o ID_Autor
select max(Preco_Livro) from tbl_Livro; -- retorna o preco mais alto da coluna
select min(Preco_Livro) from tbl_Livro; -- retorna o preco mais baixo
select AVG(Preco_Livro) from tbl_Livro;-- retorna o livro com a média dos precos do livros
select SUM(Preco_Livro) from tbl_livro;-- SUM vai somar todos os precos dos livros