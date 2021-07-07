
    
    



select count(*) as validation_errors
from "dvdrental"."dbt"."customer_categories"
where rental_count is null


