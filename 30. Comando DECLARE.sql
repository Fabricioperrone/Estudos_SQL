-- Variáveis locais e Escopo - Comando DECLARE
-- Escopo das variáveis
-- O escopo de uma variável diz respeito aos locais 
-- onde a variável "existe" ou seja, onde ela pode ser acessada.
-- 
-- Níveis de escopo:
-- Global (acessíveis de qualquer local).
-- Sessão (variáveis @ e de sistema).
-- Parâmetros (nível de rotinas, criadas quando a rotina
-- é chamada, e destruídas quando a rotina termina).
-- Local (limitadas ao bloco BEGIN onde foram declaradas).
---------------------------------------------------------------------------
-- Podemos criar variáveis locais em um procedimento ou função
-- usando a declaração DECLARE dentro do bloco BEGIN.

-- A variável pode ser criada e inicializada com um valor se desejado.
-- Ficam disponíveis apenas dentro do bloco onde foram criadas, e em 
-- blocos que existam dentro do bloco onde a variável foi criada.
-- Após o bloco ter sido executado e encerrado, a variável é desalocada da memória. 
-- Sintaxe:
-- DECLARE  nome_var1 tipo, nome_var2 tipo
-- [DEFAULT valor_padrão]

-- A instrução DECLARE deve vir antes de qualquer outra instrução no bloco BEGIN.
-- Podemos declarar diversas variáveis numa mesma instrução DECLARE, desde
-- que sejam todas do mesmo tipo de dados e valor padrão. 
-- Como atribuir valores à variáveis:
-- Podemos usar a instrução SET ou ainda
-- SELECT...INTO
-- Exemplo com SELECT...INTO  ( o desconto será dado diretamente 
-- em reais, não porcentagem; os comandos devem ser ajustados
-- para retornar apenas uma linha no SELECT...INTO );

DELIMITER //
CREATE FUNCTION calcula_desconto(livro INT, desconto DECIMAL(10,2))
RETURNS DECIMAL(10.2)
BEGIN
	DECLARE preco DECIMAL(10,2);
    SELECT Preco_Livro  FROM tbl_Livro
    WHERE ID_Livro = Livro INTO preco;
    RETURN preco - desconto;
END//
DELIMITER ;

-- Testando com o livro id 4 e descont de R$ 10,00
SELECT * FROM tbl_livro WHERE ID_Livro = 4;
SELECT calcula_desconto(4, 10.00);

SELECT * FROM tbl_Livro WHERE ID_Livro = 4;