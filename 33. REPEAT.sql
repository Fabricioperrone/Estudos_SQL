-- Estrutura de reptição REPEAT
-- Exemplo comando REPEAT
DELIMITER //
CREATE PROCEDURE acumula_repita (limite TINYINT UNSIGNED) -- UNSIGNED (Só aceita valores positivos). 
BEGIN
	 DECLARE  contador TINYINT UNSIGNED DEFAULT 0;
     DECLARE soma INT DEFAULT 0;
     REPEAT
		SET contador = contador + 1;
        SET soma = soma + contador;
	UNTIL  contador >= limite
    END REPEAT;
    SELECT soma;
END//
DELIMITER ;

-- Testando a estrutura repita
CALL acumula_repita(10);
CALL acumula_repita(0); -- Este resultado em valor errado, pois
-- o contador é incrementado  ANTES do teste condicional. 
 
 -- Resolvendo o problema do teste de REPITA
 DROP PROCEDURE IF EXISTS  acumula_repita;
 DELIMITER //
 CREATE PROCEDURE acumula_repita(limite TINYINT UNSIGNED)
 main: BEGIN
	DECLARE contador  TINYINT UNSIGNED DEFAULT 0;
    DECLARE soma INT DEFAULT 0;
    IF limite < 1 THEN
		SELECT  'O valor deve ser maior que zero' AS Erro;
        LEAVE main;
	END IF;
    REPEAT
		SET contador = contador + 1;
        SET soma = soma + contador;
	UNTIL contador >= limite
    END REPEAT;
    SELECT soma;
END//
DELIMITER ;

-- Testando a estrutura repita
CALL acumula_repita(10);
CALL acumula_repita(0); -- Agora o erro é reportado

	
        