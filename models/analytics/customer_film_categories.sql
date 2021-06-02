SELECT
    film_category_name.description,
    customer_categories.customer_name
FROM {{ ref('customer_categories') }}
LEFT JOIN {{ ref('film_category_name') }}
    ON film_category_name.category_name = customer_categories.category_name
