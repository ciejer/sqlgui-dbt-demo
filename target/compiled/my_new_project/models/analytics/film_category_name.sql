
SELECT
    film.title,
    film.description,
    film.film_id,
    category.name AS category_name
FROM "dvdrental"."public"."film" AS film
LEFT JOIN "dvdrental"."public"."film_category" AS film_category
    ON film_category.film_id = film.film_id
LEFT JOIN "dvdrental"."public"."category" AS category
    ON category.category_id = film_category.category_id