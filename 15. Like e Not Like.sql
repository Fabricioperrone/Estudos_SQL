-- Like e Not Like
-- Determina se uma cadeia de caracteres específica
-- corresponde a um padrão especificado
-- Um padrão pode incluir caracteres normais e curingas

-- NOT LIKE inverte a comparação, verificando se a cadeia de 
-- caracteres  NAO corresponde ao padrão especificado

-- LIKE - Padrões especificos
--  (metacarcteres)
-- % -- Qualquer cadeia  de 0 ou mais caracteres
-- '_' -- Sublinhado: qualquer caracter único
-- Usando LIKE
select * from tbl_livro
WHERE Nome_Livro LIKE 'F%';

select * from tbl_livro
WHERE Nome_Livro NOT LIKE 'S%';

select Nome_Livro
from tbl_livro
where Nome_Livro LIKE '_i%';

