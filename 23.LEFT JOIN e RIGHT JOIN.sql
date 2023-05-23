-- LEFT JOINS e RIGHT JOINS 
-- Consular dados em duas ou mais tabelas 
-- OUTER JOINS
-- LEFT JOIN: Retorna todas as linhas da tabela à 
-- esquerda, mesmo se não houver nenhuma correspodência na tabela à direita.
-- RIGHT JOIN: Retorna todas as linhas da tabela à direita, mesmo se não houver 
-- nenhuma correspondência na tabela à esquerda.
-- FULL JOIN: Retorna linhas quando houver uma correspondência
-- em qualquer uma das tabelas. É uma combinação de LEFT e RIGHT JOINS.
-- Sintaxe:
-- select coluna
-- from tabela_esq
-- left (outer) join tabela_dir
-- on tabela_esq.coluna = tabela.dir.coluna;

-- Exemplo:
select * from tbl_autores
left join tbl_livro
on tbl_livro.ID_Autor = tbl_autores.ID_Autor;

-- Invertendo, trazendo os autores sem correspondência
-- LEFT JOIN excuindo correspondência
-- Sintaxe: 
-- select coluna 
-- from tabela_esq
-- left (outer) join tabela_dir
-- on tabela-esq.coluna = tabela_dir.coluna
-- where tabela_dir.coluna IS NULL;
-- Exemplo:
select * from tbl_autores
left join tbl_livro
on tbl_livro.ID_Autor = tbl_autores.ID_Autor
where tbl_livro.ID_Autor IS NULL; 

-- RIGHT JOIN --
-- Sintaxe:
-- select tabela_esq
-- right (outer) join tabela_dir
-- on tabela_esq.coluna = tabela_dir.coluna;
-- Exemplo:
select * from tbl_livro AS Li
right join tbl_editoras AS Ed 
on Li.ID_Editora = Ed.ID_Editora
where Li.ID_Editora IS NULL -- Excluindo as correspondências. Retorna apenas com editora com colunas NULL

insert into tbl_editoras(ID_editora, Nome_Editora) 
values (6, 'Companhia das Letras');
