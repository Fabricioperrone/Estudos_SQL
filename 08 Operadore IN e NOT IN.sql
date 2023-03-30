-- Operadore IN e NOT IN
-- Filtragem usando listas de valores no Mysql
# sintaxe
-- select colunas(s)
-- FROM tabela(s)
-- WHERE expressão | NOT IN (listas de valores);
-- Exemplos:
-- Exemplo 1:

select Nome_Livro, ID_editora
FROM tbl_Livro
where ID_editora in (2,4);

# Exemplo 2:
select Nome_livro, ID_editora
FROM tbl_livro
WHERE ID_editora NOT IN(1,2);

# Exemplo 3:
select Nome_Livro, ID_Editora
from tbl_livro
where ID_Editora IN (
	select ID_Editora
    from tbl_editoras
    where Nome_Editora = 'Wiley' or Nome_Editora = 'Microsoft Press'
);
select Nome_editora, ID_editora
from tbl_editoras
