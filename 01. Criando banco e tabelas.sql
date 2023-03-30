-- Lição 1 Mysql
-- Criar banco de dados
-- if not exists é opcional, ele previne criar um banco de dados que já 
-- existe na no servido
create database  if not exists db_Biblioteca; 
-- ex create database db_Biblioteca;

-- Verificar banco de dados, podemos verificar os bancos de dados existentes com o comando show databases
show databases;

-- Comando use intrui o SGBD a usar o banco de dados especificado para rodar os comandos
-- sintaxe Use nome_do_banco_de_dados;
use db_Biblioteca;
-- Para visualizar o banco de dados selecionado no momento do use o comando:
select database();

-- excluir banco de dados 
-- Podemos excluir um banco de dados com o comando: drop database;
drop database if exists nome_bd;

-- Criar tabelas 
-- Para criar tabelas , usamos  o comando CREATE table:
-- CREATE table if not exists nome_da_tabela (
 -- coluna tipo de dados CONSTRAINTS
-- );

-- Criar tabelas 
Use db_Biblioteca;
show tables;

create table if not exists tbl_Livro (
ID_Livro smallint auto_increment primary key,
Nome_Livro varchar(50) NOT NULL,
ISBN varchar(30) NOT NULL,
ID_Autor smallint NOT NULL,
Data_Pub date NOT NULL,
Preco_Livro decimal NOT NULL
);

create table tbl_autores (
ID_Autor SMALLINT primary key,
Nome_Autor VARCHAR(50),
Sobrenome_Autor VARCHAR(60)
);

create table tbl_Editoras(
ID_Editora smallint primary key
auto_increment,
Nome_Editora varchar(50) NOT NULL
);