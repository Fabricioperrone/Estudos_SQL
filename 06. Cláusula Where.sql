-- Cláusula WHERE 
-- Cláurura WHERE
-- Permite filtar registros em uma consulta
-- Ex: select colunas FROM tabela WHERE coluna = valor;
-- ex
SELECT Nome_livro, Data_Pub 
FROM  tbl_Livro
WHERE ID_Autor = 1;

SELECT ID_Autor, Nome_Autor 
FROM tbl_Autores
WHERE Sobrenome_Autor = 'Stanek';

