-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental
SELECT rental_date 
FROM customer 
INNER join rental on customer.customer_id = rental.customer_id 
WHERE customer.first_name = 'Patricia'