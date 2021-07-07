SELECT
    customer.first_name,
    customer.last_name,
    customer.customer_id,
    address.address,
    address.address2
FROM "dvdrental"."public"."customer" AS customer
LEFT JOIN "dvdrental"."public"."address" AS address
    ON address.address_id = customer.address_id