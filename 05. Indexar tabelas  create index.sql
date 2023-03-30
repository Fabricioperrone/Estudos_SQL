-- Criar índices 
-- Declaração: CREATE INDEX em uma tabela já exsitente:
-- Sintaxe 
-- create unique index nome_do_indice
-- on nome_tabela (
-- coluna1 [asc | desc],
-- [coluna2, [asc | desc]]
-- );
-- Criar índices
-- Declaração ALTER TABLE / INDEX em uma tabela já existente:
-- Sintaxe:
alter table nome_da_tabela  add index nome_índice(colunas);

-- Comandos
show index from tbl_Editoras;
-- comando explain irá trazer infos de como será feito o select

explain select * FROM  tbl_Editoras
where Nome_Editora = "Springer";

Create index idx_editora ON tbl_Editoras(Nome_Editora);
select * from tbl_Editoras;
DROP INDEX idx_editora ON tbl_editoras;




