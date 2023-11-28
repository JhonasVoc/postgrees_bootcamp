-- UNION
-- combina mais de 1 SELECT
-- Concatena os resultado

-- Basic sintax
/*
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
*/


SELECT * FROM inventory;

-- Exemplo básico
SELECT film_id,COUNT(film_id)
FROM
	inventory
GROUP BY
	1
HAVING 
	COUNT(film_id) >4
	
UNION

SELECT film_id,COUNT(film_id)
FROM
	inventory
GROUP BY
	1
HAVING 
	COUNT(film_id) <3;	