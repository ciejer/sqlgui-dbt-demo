
    
    




select count(*) as validation_errors
from (
    select customer_name as id from "dvdrental"."dbt"."customer_categories"
) as child
left join (
    select last_name as id from "dvdrental"."dbt"."customer_address"
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


