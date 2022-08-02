-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film
select title from actor 
left join film_actor on actor.actor_id = film_actor.actor_id
left join film on film_actor.film_id = film.film_id
where actor.last_name = 'Davis'