{{ config(materialized="table") }}
SELECT
    film.title,
    film.description,
    film.film_id,
    category.name AS category_name
FROM {{ source('public','film') }} AS film
LEFT JOIN {{ source('public','film_category') }} AS film_category
    ON film_category.film_id = film.film_id
LEFT JOIN {{ source('public','category') }} AS category
    ON category.category_id = film_category.category_id
