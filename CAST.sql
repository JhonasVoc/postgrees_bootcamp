-- CAST habilita converter um tipo de dados (data type) EM OUTRO
-- Não é todo tipo de dados que é possível converter
-- Por exemplo, '5' para um int funciona, 'five' para int não vai funcionar

SELECT * FROM film;

SELECT
	CAST('5' as INTEGER);
	
-- Estamos tranformando um int em Varchar e depois aplicando uma função 
SELECT
	CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;