
  create view "dvdrental"."dbt"."customer_film_categories__dbt_tmp" as (
    SELECT
    film_category_name.description,
    customer_categories.customer_name
FROM "dvdrental"."dbt"."customer_categories"
LEFT JOIN "dvdrental"."dbt"."film_category_name"
    ON film_category_name.category_name = customer_categories.category_name
  );
