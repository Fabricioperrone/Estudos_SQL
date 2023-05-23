-- JOINS --
-- A cláusula JOIN é usada para combina dados provenientes
-- de duas ou mais tabelas, baseado em um relaciomento entre
-- colunas destas tabelas.

-- CATEGORIAS DE JOIN
-- INNER JOIN: retorna linhas quando houver pelo menos uma 
-- correspondência em ambas as tabelas.
-- OUTER JOIN: retorna linhas mesmo quando não houver pelo menos
-- uma correspondência em uma das tabelas (ou ambas). O OUTER JOIN dividi-se 
-- em LEFT JOIN, RIGHT JOIN e FULL JOIN.
-- SINTAXE:
-- SELECT colunas
-- FROM tabela1
-- INNER JOIN tabela2
-- ON tabela1.coluna=tabela2.coluna
-- Exemplo:
select * from tbl_livro
inner join tbl_autores
ON tbl_livro.ID_Autor=tbl_autores.ID_Autor; 

select tbl_livro.Nome_Livro, tbl_livro.ISBN, tbl_autores.Nome_Autor
from tbl_livro
inner join tbl_autores
on tbl_livro.ID_Autor = tbl_autores.ID_Autor;

-- Usando  Aliases e claúsulas WHERE e LIKE
select L.Nome_Livro AS Livros, E.Nome_editora AS Editoras
from tbl_livro L 
inner join tbl_editoras AS E 
ON L.ID_Editora = E.ID_Editora
where E.Nome_Editora like 'M%';

-- Consultando três tabelas de só vez
select L.Nome_Livro AS Livro, A.Nome_autor
AS Autor, E.Nome_Editora AS Editora
from tbl_livro AS L 
inner join tbl_autores AS A 
on L.ID_Autor = A.ID_Autor
inner join tbl_editoras AS E 
on L.ID_Editora = E.ID_Editora;