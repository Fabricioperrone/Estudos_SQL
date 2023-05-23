-- Usamos a cláusura GROUP BY para agrupar registros
-- em subgrupos baseados em colunas ou valores retornados
-- por uma expressão.
-- Sintaxe básica
-- select colunas, função_agregação()
-- from tabela
-- where filtro
-- group by colunas
use db_Biblioteca;
-- Criar uma tabela para teste de GROUP BY
create table Vendas(
ID smallint primary key,
Nome_vendedor varchar(20),
Quantidade int,
Produto varchar(20),
Cidade varchar(20)
);
select * from Vendas;
insert into Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade) 
values (10, 'Jorge', 1400, 'Mouse','São Paulo'); 

insert into Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade) 
values (12, 'Tatiana', 1220, 'Teclado','São Paulo'); 

insert into Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade) 
values (14, 'Ana', 1700, 'Teclado','Rio de Janeiro'); 

insert into Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade) 
values (15, 'Rita', 1700, 'Webcam','Recife'); 

insert into Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade) 
values (18, 'Marcos', 980, 'Mouse','São Paulo'); 

insert into Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade) 
values (19, 'Carla', 1120, 'Webcam','Recife'); 

insert into Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade) 
values (22, 'Roberto', 3145, 'Mouse','São Paulo'); 

-- Usando o GROUP BY
-- Consulta usando agregação para obter total de vendas de mouses
select sum(Quantidade) As TotalMouses
from Vendas 
Where Produto = 'Mouse';

-- Consulta totalizando as vendas  de todos os produtos
-- por  cidade
select Cidade, sum(Quantidade) As Total
from Vendas
group by Cidade;

select Cidade, count(*) As Total
from Vendas
group by Cidade;