SELECT * FROM film;

SELECT * FROM actor;

SELECT first_name,last_update from actor;

SELECT 
	first_name, last_name, email
FROM 	
	customer;
	
--SELECT DISTINCT

SELECT DISTINCT first_name
FROM
	customer;
	
SELECT DISTINCT release_year
	FROM film;
	
SELECT DISTINCT (rental_rate)
	FROM film;
	
SELECT DISTINCT rating
	FROM film;