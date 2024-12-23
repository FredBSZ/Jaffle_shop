
with stg_items as
(select 

id as item_id,
order_id,
sku

 from {{ source('jaffle', 'items') }})

 select * from stg_items