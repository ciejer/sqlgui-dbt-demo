
    
    




select count(*) as validation_errors
from (
    select category_name as id from "dvdrental"."dbt"."customer_categories"
) as child
left join (
    select category_name as id from "dvdrental"."dbt"."film_category_name"
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


