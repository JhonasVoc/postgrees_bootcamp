/* We are lauching service for our most loyal customer.
We will assign platinum status to customers that have had 40 
or more transaction payments.
Whats  customer_ids are eligible for platinum status?*/

--Look table payment
SELECT * FROM payment;

SELECT 
	customer_id, COUNT(*)
FROM
	payment
GROUP BY 
	customer_id
HAVING
	COUNT(*) >= 40;
	
/* What are the customer ids of customers who have spent mode
than $100 in payment transaction with our staff_id 
member 2?*/

SELECT * FROM payment;

SELECT customer_id,SUM(amount)
FROM
	payment
WHERE
	staff_id = 2
GROUP BY
	customer_id
HAVING
	SUM(amount) > 100;