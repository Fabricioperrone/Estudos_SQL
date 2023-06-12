-- Estruturas de repetição - Comando LOOP
-- LOOP/REPEAT//WHILE
-- Blocos iterativos --
-- Um bloco iterativo é um bloco de código que é
-- excutado repetidamente por um comando  especial 
-- até que a condição de parada interrompa.
-- Um bloco iterativo por ser aninhado  com outros blocos iterativos.
-- O MySQL possui três tipos báiscos de blocos iterativos:
-- LOOP
-- REPEAT
-- WHILE
-- Exemplo de LOOP
DELIMITER //
CREATE PROCEDURE acumula (limite INT)
BEGIN
	DECLARE contador INT DEFAULT 0;
    DECLARE SOMA INT DEFAULT 0;
    loop_teste: LOOP
		SET contador = contador + 1;
        SET soma = soma + contador;
        IF contador >= limite THEN
			LEAVE loop_teste;
		END IF;
	END LOOP loop_teste;
    SELECT soma;
END//
DELIMITER ;

-- Testando 
CALL acumula(10);

    
    
	