
    
    



select count(*) as validation_errors
from "dvdrental"."dbt"."customer_address"
where first_name is null


