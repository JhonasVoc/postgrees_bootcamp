SELECT * FROM film;
-- MIN e MAX
SELECT MIN(replacement_cost)
FROM
	film;
	
SELECT MAX(replacement_cost)
FROM
	film;

SELECT MAX(replacement_cost), MIN(replacement_cost)
FROM
	film;
--COUNT
SELECT COUNT(*)
FROM
	film;
	
--AVG
SELECT AVG(replacement_cost)
FROM
	film;
	
--AVG e ROUND();
--AVG
SELECT ROUND(AVG(replacement_cost),2)
FROM
	film;
--SUM
SELECT SUM(replacement_cost)
FROM
	film;

