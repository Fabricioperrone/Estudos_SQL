-- Estrutura de repetição -- ITERATE
-- ITERATE siginfica dentro de uma estrutura de repetição
-- "incie o loop  novamente"
-- A declaração  ITERATE aparece apenas dentro de estruturas
--  LOOP, REPEAT, WHILE
DELIMITER //
CREATE PROCEDURE  acumula_iterate (limite TINYINT unsigned)
BEGIN
	DECLARE  contador TINYINT UNSIGNED DEFAULT 0;
    DECLARE soma INT UNSIGNED DEFAULT 0;
    teste: LOOP
		SET  contador =  contador + 1;
        SET soma = soma + contador;
        IF contador < limite THEN 
			ITERATE teste;
		END IF;
        LEAVE teste;
	END LOOP teste;
    SELECT soma;
END//

DELIMITER ;
-- Testando:
CALL  acumula_iterate(10);

-- Outro exemplo (ITERATE) usando a estrutura WHILE
DELIMITER //
CREATE PROCEDURE pares (limite TINYINT UNSIGNED)
main: BEGIN
	DECLARE contador TINYINT DEFAULT 0;
    meuloop: WHILE contador < limite DO
    SET contador = contador + 1;
    IF MOD(contador, 2) THEN
		ITERATE  meuloop;
	END IF;
    SELECT CONCAT(contador, ' é um número par') AS Valor;
END WHILE;
END//

DELIMITER ;

-- Testando pares
CALL pares(20);