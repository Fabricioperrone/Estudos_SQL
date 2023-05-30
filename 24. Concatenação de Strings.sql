-- Concatenação de Strings com CONCAT , IFNULL e COALESCE
-- Concatenação e STRING
-- É possível concatenar  strings usando-se  CONCAT().
-- Sintaxe:
-- select concat(string | nome_coluna, string | nome_coluna)
-- Exemplo:
select concat('Fabrício', ' Perrone') AS 'Meu nome';

select concat(Nome_autor, ' ' , Sobrenome_autor)
AS 'Nome completo' from tbl_autores;

select concat('Eu gosto do livro ', Nome_livro) as 'Nome do livro'
from tbl_Livro where  ID_Autor = 2;

create table teste_nulos (
id smallint primary key auto_increment,
item varchar(20),
quantidade smallint NULL
);

insert into teste_nulos(id, item, quantidade)
 values (1, 'Pendrive', 5);
insert into teste_nulos(id, item, quantidade) 
values (2, 'Monitor', 7);
insert into teste_nulos(id, item, quantidade) 
values (3, 'Teclado', null);

select * from teste_nulos;
--------------------------------------------
-- Se uma STRING  for concatenada  com NULL, 
-- o resultado retornado será NULL:
select concat('A quantidade adquirida é ' ' ', quantidade) AS 'Quantidade'
from teste_nulos 
where  item = 'Monitor';
------------------------------------------
Funções IFNULL e COALESCE
IFNULL (coluna, substituição) 

select concat('A quantidade adquirida é ' ' ' , ifnull(quantidade, 0))
from teste_nulos
where item = 'Teclado';

-- COALESCE
-- COALESCE (valor1, valor2, ..., valorN)
-- Essa função retornará o primeiro valor não-nulo 
-- encontrado em seus argumentos
-- Exemplo:
select concat('A quantidade adiquirida é ', ' ', 
COALESCE (NULL, quantidade, NULL, 0))
FROM teste_nulos
where item = 'Teclado';