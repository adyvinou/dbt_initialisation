select customer_id as uniq_field,
    count(*) as nb_aparition
from Analytics.customers
group by customer_id
having count(*)>1
