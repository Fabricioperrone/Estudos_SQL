-- Between - seleção de intervalos em consultas
-- sintaxe
-- select colunas from tabela
-- where coluna  BETWEEN valor1 and valor2;]

select * from tbl_Livro
where Data_Pub BETWEEN '20040517' and '20110517';

select Nome_Livro AS Livro, Preco_Livro AS Preco from tbl_Livro
where Preco_Livro BETWEEN 40.00 AND 60.00;