-- Default valores padrão em colunas
-- Usando o valor Default
-- Criar um padrão
-- alter table nome_tabela
-- modify  column nome_coluna  tipos_dados
-- default 'valor_padrão'
-- Aplicando padrões
alter table tbl_autores
modify column Sobrenome_Autor varchar(60)
default 'da Silva';

-- Inserir registro para teste
insert into tbl_autores(ID_Autor, Nome_Autor) 
values (6 , 'João');

-- exemplo de inset sem uso do valor default
insert into tbl_autores(ID_Autor, Nome_Autor, Sobrenome_Autor) 
values (7 , 'Mario', 'Ali');

-- Não foi especificado o sobrenome do autor
-- sera assumido o padrão criado
-- verificando o reslultado
select * from tbl_autores;

-- Desfazendo o DEFAULT
alter table tbl_autores
modify column Sobrenome_Autor varchar(60);