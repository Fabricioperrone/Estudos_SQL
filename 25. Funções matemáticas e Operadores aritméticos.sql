-- Funções matemáticas e Operadores aritméticos
-- É possível realizar operações matemáticas simples nos valores
-- de uma coluna e retornar resultados em uma  coluna calculada
-- Para isso usamos os operadores matemáticos comuns:

--  + soma
--  - subtração
--  / divisão
--  * multiplicação
--  % ou MOD Módulo
 -- DIV Divisão inteira

-- Exemplos:

select Nome_livro, Preco_livro * 5 AS 'Preço 5 unidades'
from tbl_livro;


select Nome_livro, Preco_livro / 2 AS 'Preço com 50% de desconto'
from tbl_livro;

select 3 * 9;
select 2 * 9 / 3;
select 10 MOD 3;

-- Funções matemáticas
-- É também possível utilizar funções matemáticas  nos valores de uma coluna
-- Abaixo vemos algumas  funções  matemáticas comuns:

-- CEILING() Arredondar para cima
-- FLOOR()Arredondar para baixo
-- PI() Retorna o valor de PI
-- POW(x,y) Retorna x elevado a y
-- SQRT() Raiz quadrada de um elemento
-- SIN() Retorna um seno de um dado em radianos
-- HEX() Retorna a representação hexadecimal de um valor decimal.
-- Exemplos:
select Nome_livro, ceiling(Preco_livro * 5) AS 'Preço arredondado '
from tbl_livro;

select PI();
select POW(2,4);
select sqrt(81);
select sin(PI());
select hex(1200);
