with stg_stores as

(select 
id as store_id,
name as store_name,
opened_at,
tax_rate
from {{ source('jaffle', 'stores') }})

select * from stg_stores