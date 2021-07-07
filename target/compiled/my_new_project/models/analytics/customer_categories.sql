SELECT
    film_category_name.category_name,
    customer_address.first_name || ' '
    || customer_address.last_name AS customer_name,
    count(*) AS rental_count
FROM "dvdrental"."public"."rental" AS rental
LEFT JOIN "dvdrental"."dbt"."customer_address" AS customer_address
    ON customer_address.customer_id = rental.customer_id
LEFT JOIN "dvdrental"."public"."inventory" AS inventory
    ON inventory.inventory_id = rental.inventory_id
LEFT JOIN "dvdrental"."dbt"."film_category_name" AS film_category_name
    ON film_category_name.film_id = inventory.film_id
GROUP BY customer_address.first_name,
    customer_address.last_name,
    film_category_name.category_name