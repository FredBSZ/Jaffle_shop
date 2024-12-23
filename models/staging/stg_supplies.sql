with stg_supplies as
(select 
id as supplies_id,
name as supplies_name,
cost,
perishable as perishable_flag,
sku
 from {{ source('jaffle', 'supplies') }})

select * from stg_supplies