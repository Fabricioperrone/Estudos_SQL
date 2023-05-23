-- HAVING --
-- Cláusula usada para especificar condições de filtragem
-- em grupos de registros ou agregações.
-- É frequentemente usada com a cláusula GROUP BY
-- ´para filtrar as colunas agrupadas.alter
-- Sintaxe: 
-- select colunas, funçã`_agregação()
-- from tabela 
-- where filtro
-- group by colunas 
-- having filtro_agrupamento
-- Consulta retornando total de vendas das cidades com menos de 2500 produtos vendidos: 
-- having: tendo

select Cidade, sum(Quantidade) As Total
from Vendas 
group by Cidade
having sum(Quantidade) < 2500;

-- Exemplo 2
-- Consulta retornando total de vendas do produto 'Teclado' das cidades
-- com menos de 1500 teclados

select Cidade, SUM(Quantidade) As TotalTeclados
from Vendas
where Produto = 'Teclado'
group by Cidade
HAVING SUM(Quantidade) < 1500;