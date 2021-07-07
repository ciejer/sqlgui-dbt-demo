
    
    



select count(*) as validation_errors
from "dvdrental"."dbt"."customer_categories"
where customer_name is null


