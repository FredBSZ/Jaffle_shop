with stg_orders as
(select 

 id as order_id
,customer as customer_id
,ordered_at
,store_id
,subtotal
,tax_paid
,order_total as order_amount

from {{ source('jaffle', 'orders') }})

select * from stg_orders