SELECT * FROM customer;
--WHERE BASICO
SELECT * FROM customer
WHERE
	first_name = 'Jared';
	
SELECT * FROM film;

SELECT  * FROM film
WHERE 
	rental_rate > 4;
	
SELECT  * FROM film
WHERE 
	rental_rate > 4 and replacement_cost >=19.99;
-- COMBINANDO WHERE	
SELECT title 
FROM
	film
WHERE
	rental_rate >4 AND
	replacement_cost > 19.99 AND
	rating = 'R';
	
-- COM COUNT		
SELECT COUNT(*) 
FROM
	film
WHERE
	rental_rate >4 AND
	replacement_cost > 19.99 AND
	rating = 'R';
	
SELECT COUNT(*) 
FROM
	film
WHERE
	rating = 'G' OR rating = 'NC-17';
	
--Exericio
/*A customer forgot their wallet at out store!
We need to track down their email inform tham.
Whats is the eail for the customer
with the name Nancy Thomas?*/

SELECT * FROM customer;

SELECT	
	first_name, last_name,email
FROM
	customer
WHERE 
	first_name = 'Nancy' and last_name ='Thomas';
	
--Exercicio 2
/*A customer want to know what the movie "Outlow Hanky"
is about. Could you give them the description for the movie
"Outlaw Hanky"?*/
SELECT 
	description
FROM
	film
WHERE
	title = 'Outlaw Hanky';
--Exercicio 3
/* A customer is late on their movie return,
and we've maile them a letter to their address at
'259 Ipoh Drive'. We should also call them on the phone to
let them know.
Can you get the phone number for the addres?*/
SELECT * FROM address;

SELECT 
	phone
FROM
	address
WHERE
	address = '259 Ipoh Drive';
	