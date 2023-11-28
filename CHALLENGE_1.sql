-- Challenge 1
-- How many payment transactions were greate than $5.00?
SELECT * FROM payment;

SELECT COUNT(*)
FROM
	payment
WHERE
	amount > 5;

/*How many actors have a first name that starts
with the letter P? */
SELECT * FROM actor;

SELECT COUNT(*)
FROM
	actor
WHERE
	first_name LIKE 'P%';
--How many unique districts are our customers from?
SELECT * FROM address;

SELECT	COUNT (DISTINCt	district)
FROM
	address;
	
--Retrieve the list of names for those distinct districs.
SELECT DISTINCT (district)
FROM
	address;
	
	
/* How many films have a rating of R and a replacement cost
between $5 and $15?*/
SELECT * FROM film;

SELECT COUNT(*) 
FROM
	film
WHERE rating = 'R' and 
	  replacement_cost BETWEEN 5 and 15;
/* How many films have the word Truman somewhere in
the title */

SELECT COUNT(*)
FROM
	film
WHERE title LIKE '%Truman%';