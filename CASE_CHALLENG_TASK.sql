/* 
We want to know and compare the variuos amount
of films we have per movie
rating.
Use CASE and the dvdrental database to re-create this table
R   PG   PG13
195  194  223
*/
--Olhanto tabela film
SELECT * FROM film;

SELECT
	SUM(CASE rating 
		WHEN 'R' THEN 1
	ELSE 0
END) AS r,
	SUM(CASE rating
		WHEN 'PG' THEN 1
	   ELSE 0
END) as pg,
	SUM(CASE rating
		WHEN 'PG-13' THEN 1
	   ELSE 0
END) as pg13
FROM
	film;