-- Lição 2 
-- Auto incremento 
-- exemplo:
create table tbl_incremento (
Codigo smallint primary key auto_increment,
Nome varchar(20)NOT NULL
)auto_increment = 15;

insert into tbl_teste_incremento (Nome) values ('Ana');
insert into tbl_teste_incremento (Nome) values ('Maria');
insert into tbl_teste_incremento (Nome) values ('Julia');
insert into tbl_teste_incremento (Nome) values ('Joana');

-- veroficar se dados foram inseridos
select * from tbl_teste_incremento;

-- Verificar o valor atual do auto incremento
-- Podemos verificar o valor de incremento  mais atual armazenado
-- em uma tabela  no banco de dados  com o comando a seguir:
-- select max (nome_coluna)
-- from tabela
-- exemplo:
select max(ID_Livro)
from tbl_Livro;

-- Altera o próximo valor no campo de auto incremento
-- Para alterar o valor do incremento do próximo registro a ser 
-- armzenado em uma tabela, use o comando a seguir:
-- ALTER TABLE tabela AUTO_INCREMENT = valor;
-- exemplo: Usar o valor 90 a partir do próximo registro
alter table tbl_teste_incremento
auto_increment = 90;