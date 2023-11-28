-- CASE é usado apenas para executar um comando em que uma condição rpecisa ser estabelecida.
-- é bem similar a IF/ELSE 
--general Case ou CASE expression

/* General CASE- Sintax
CASE
	WHEN condition1 THEN result1
	WHEN condition2 THEN result2
	ELSE some_other_result
END
*/

--CASE EXPRESSION - Sintax

/*CASE expression
   WHEN value_1 THEN result_1
   WHEN value_2 THEN result_2 
   [WHEN ...]
ELSE
   else_result
END
*/
---Basicamente o CASE Expression compara os valores com a coluna que nós declaramos na expression.

SELECT * FROM film;

SELECT title,film_id, language_id,
CASE
	WHEN language_id = 1 THEN 'ONE'
	WHEN language_id = 2 THEN 'TWO'
	ELSE 'OTHER'
	END
	FROM film;
--CASE EMPRESSION
SELECT title,
       rating,
       CASE rating
           WHEN 'G' THEN 'General Audiences'
           WHEN 'PG' THEN 'Parental Guidance Suggested'
           WHEN 'PG-13' THEN 'Parents Strongly Cautioned'
           WHEN 'R' THEN 'Restricted'
           WHEN 'NC-17' THEN 'Adults Only'
       END rating_description
FROM film
ORDER BY title;

--Tabela film
SELECT * FROM film;
--Exemplo case
SELECT 
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS number_od_bargains,
SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular,
SUM(CASE rental_rate
   WHEN 4.99 THEN 1
   ELSE 0
END ) AS premium
FROM film;



