
-- Alter table
-- É possível alterar a estrutura de uma tabela após
-- ter sido criada, acrescentando ou
-- excluindo atributos(campos)
-- Usamos o comando ALTE TABLE

-- ALTER TABLE DROP
-- EX: 
-- ALTER TABLE tabela 
-- DROP colunm coluna
-- EX:
ALTER TABLE tbl_Livro
DROP ID_Autor;

select * from tbl_livro;

-- Pode-se excluir uma chave primária
ALTER TABLE tabela
DROP primary key;

-- ALTER TABLE ADD
-- EX:

ALTER TABLE tbl_Livro
ADD ID_Autor SMALLINT NOT NULL;

ALTER TABLE tbl_Livro
ADD constraint fk_ID_Autor
foreign key(ID_Autor)
references tbl_autores(ID_Autor);

ALTER TABLE tbl_livro
ADD ID_Editora smallint not null;

ALTER TABLE tbl_livro
ADD constraint fk_id_editora
foreign key(ID_editora)
references tbl_editoras(ID_editora);

-- Alter table COLUNM 
-- Podemos alterar colunas, por exemplo
-- mudando o tipo de dados
-- alter table tbl_Livro
-- alter column ID_Autor smallint;

-- Alter table - ADD PK
-- Obs: A coluna ID_Cliente deve existir antes 
-- de ser transformada em chave primária
-- A coluna ID_Cliente receberá a CONSTRAINT (restrição)
-- PRIMARY KEY, e passará a ser a chave  primária da tabela


-- Inserir dados 
-- Inserir dados em uma tabela:
insert into tabela (coluna1, coluna2,coluna3) values ('coluna1','coluna2','coluna3');


