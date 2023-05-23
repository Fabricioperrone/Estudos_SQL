-- Backup do banco de dados
-- usar o comamdo mysqldump no terminar:
-- sintaxe:
--  mysqldump -u root -p nome_banco > backup.sql

-- Você pode abrir o arquivo resultante  com algum  editor
-- de textos no terminal para ver seu conteúdo.
-- Exemplo: mysqldump -u root -p db_Biblioteca >
-- /home/user/db_Biblioteca.sql

-- Restaurar o banco de dados
-- Crie um banco de dados novo no servidor, de nome teste_restore
-- Use o seguinte comando ( no terminal )
-- mysql -u root p banco_criado <backup.sql

-- Exemplo: Crie um novo banco denominado teste-restore; e digite:
-- mysql -u root -p teste_restore < /home/user/db_Biblioteca.sql
