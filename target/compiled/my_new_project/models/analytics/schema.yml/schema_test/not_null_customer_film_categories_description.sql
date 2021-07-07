
    
    



select count(*) as validation_errors
from "dvdrental"."dbt"."customer_film_categories"
where description is null


