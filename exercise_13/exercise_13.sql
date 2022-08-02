-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country, avg(payment.amount) from country
LEFT join city on country.country_id = city.country_id
LEFT join address on city.city_id = address.city_id
LEFT join customer on address.address_id = customer.address_id 
Left join rental on customer.customer_id = rental.customer_id
LEFT join payment on rental.rental_id = payment.rental_id
WHERE payment.amount is not NULL
GROUP by country.country 
ORDER by avg(payment.amount) desc
limit 10