
    
    



select count(*) as validation_errors
from (

    select
        customer_name

    from "dvdrental"."dbt"."customer_categories"
    where customer_name is not null
    group by customer_name
    having count(*) > 1

) validation_errors


