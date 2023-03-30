-- Operadores AND, OR E NOT Filtrando resultados de uma consulta

-- Operadores : AND, OR e NOT
select * from tbl_livro
where ID_Livro > 2 and ID_Autor <3;

select * from tbl_livro
where ID_Livro > 2 OR ID_Autor <3;

select * from tbl_livro
where ID_Livro > 2 AND NOT ID_Autor <3;
