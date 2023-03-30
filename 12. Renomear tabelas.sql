-- Renomear tabelas
-- Use comando RENAME TABLE:
-- Exemplo:
-- Criando uma tabela clientes para teste
create table Clientes(
ID_Cliente smallint,
Nome_Cliente varchar(20),
constraint primary key(ID_Cliente)
);

insert into Clientes(ID_Cliente, Nome_Cliente)
values (22, 'Fabio');

insert into Clientes(ID_Cliente, Nome_Cliente)
values (34, 'Alberto');

insert into Clientes(ID_Cliente, Nome_Cliente)
values (42, 'Fabrício');

-- Renomeando a tabela que acabamos de criar
RENAME TABLE clientes TO Meus_Clientes;
-- fazendo uma consulta

select * from Meus_Clientes;