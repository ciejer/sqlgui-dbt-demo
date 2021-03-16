SELECT
    customer.first_name,
    customer.last_name,
    customer.customer_id,
    address.address,
    address.address2
FROM {{ source('public','customer') }} AS customer
LEFT JOIN {{ source('public','address') }} AS address
    ON address.address_id = customer.address_id
