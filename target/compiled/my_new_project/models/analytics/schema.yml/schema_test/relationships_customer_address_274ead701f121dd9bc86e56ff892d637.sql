
    
    




select count(*) as validation_errors
from (
    select first_name as id from "dvdrental"."dbt"."customer_address"
) as child
left join (
    select customer_name as id from "dvdrental"."dbt"."customer_film_categories"
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null

