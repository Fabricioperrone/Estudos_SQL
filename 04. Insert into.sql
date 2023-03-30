-- Inserir dados em uma tabela com o comando insert into

insert into tbl_autores (ID_Autor, Nome_Autor, Sobrenome_Autor)
values (1, 'Daniel', 'Barret'); 
insert into tbl_autores (ID_Autor, Nome_Autor, Sobrenome_Autor)
values (2, 'Gerald', 'Carter'); 
insert into tbl_autores (ID_Autor, Nome_Autor, Sobrenome_Autor)
values (3, 'Mark', 'Sobel'); 
insert into tbl_autores (ID_Autor, Nome_Autor, Sobrenome_Autor)
values (4, 'William', 'Stanek'); 
insert into tbl_autores (ID_Autor, Nome_Autor, Sobrenome_Autor)
values (5, 'Richard', 'Blum'); 

select * from tbl_editoras;

insert into tbl_editoras (Nome_Editora)
values ('Prentice Hall'); 
insert into tbl_editoras (Nome_Editora)
values ('O''Reily'); 
insert into tbl_editoras (Nome_Editora)
values ('Microsoft Press'); 
insert into tbl_editoras (Nome_Editora)
values ('Wiley'); 

-- Inserindo Livros na tbl_livros
select * from tbl_livro;
insert into tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) 
values ('Linux Command Line and Shell Scripting', 143856969,'20091221', 68.35 , 5, 4); 

insert into tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) 
values ('SSH, The Secure Shell', 143856969,'20091221', 58.30 , 1, 2); 

insert into tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) 
values ('Using Samba', 123856789,'20001221', 61.45, 2, 2); 

insert into tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) 
values ('Fedora and Red Hat Linux', 123346789,'200101101', 62.24, 3, 1); 

insert into tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) 
values ('Windows Server 2012 Inside Out', 123356789,'20040517', 66.80, 4, 3); 

insert into tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) 
values ('Microsoft Exchange Server 2010', 12336679,'20001221', 45.30, 4, 3); 