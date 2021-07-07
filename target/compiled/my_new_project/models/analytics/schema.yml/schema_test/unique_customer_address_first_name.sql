
    
    



select count(*) as validation_errors
from (

    select
        first_name

    from "dvdrental"."dbt"."customer_address"
    where first_name is not null
    group by first_name
    having count(*) > 1

) validation_errors


