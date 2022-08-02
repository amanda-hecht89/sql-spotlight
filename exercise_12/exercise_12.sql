-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city, sum(payment.amount) from city 
LEFT join address on city.city_id = address.city_id
LEFT join customer on address.address_id = customer.address_id 
Left join rental on customer.customer_id = rental.customer_id
LEFT join payment on rental.rental_id = payment.rental_id
WHERE payment.amount is not NULL
GROUP by city.city 
ORDER by sum(payment.amount) desc
limit 10