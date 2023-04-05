-- REGEX Expressões regulares em consultas
-- Usando o REGEXP
select Nome_Livro from tbl_livro
where Nome_Livro regexp '^[FS]';-- Conjunto de caracteres. ^ significa, inciando com umas que esta dento do conjunto

select Nome_Livro from tbl_livro
where Nome_Livro regexp '^[^FS]';-- ^ significa para não usar o que esta dentro do colchetes

select Nome_Livro from tbl_livro
where Nome_Livro regexp '[ng]$';-- procura livros que termninem com essa letras

select Nome_Livro from tbl_livro
where Nome_Livro regexp '^[FS]|Mi';-- busca com os livros que tenham as letras FS ou Mi