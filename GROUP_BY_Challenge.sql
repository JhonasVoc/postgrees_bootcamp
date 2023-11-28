/* We have two staff members, with Staff IDs
1 and 2. We want to give a bonus to the staff member that
handldled the most payments(In terms of numbers,
not total amount)
How many payments did each staff member handle and who gets
the bonus?*/

-- Look at the talbe payment
SELECT * FROM payment;

--Only have id 1 and 2
SELECT	staff_id, COUNT(amount)
FROM
	payment
GROUP BY
	staff_id ; --Staff_id 2 sell more
/* Corporatee HQ is conducting a stdy on the
relationship between replacement cos and movie
MPAA rating (e.g. C,PG,R, etc..)
Whats is the average replacement cost per MPAA rating?*/

--Look at film table
SELECT * FROM film;

SELECT rating, ROUND(AVG(replacement_cost),2)
FROM
	film
GROUP BY
	rating;
/* We are running a promotion to reward our top 5
customers with coupons.
What are the customers ids of the top 5
customers by top spend?

--Look at customer table*/
SELECT * FROM payment;

SELECT customer_id, sum(amount)
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM(amount)DESC
LIMIT 5;