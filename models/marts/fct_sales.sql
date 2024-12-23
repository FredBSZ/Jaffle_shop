with orders as
(select * from {{ ref('stg_orders') }}),

customers as
(select * from {{ ref('stg_customers') }}),

stores as
(select * from {{ ref('stg_stores') }}),

items as
(select * from {{ ref('stg_items') }}),

fct_facts as
(select
 orders.order_id,
  customers.customer_name,
 customers.customer_id,
 items.item_id,
 items.sku,
 stores.store_id,
 stores.store_name,
 sum(orders.order_amount) total_amount

 from orders
 left join customers using (customer_id)
 left join stores using (store_id)
 left join items using (order_id)

 group by

 orders.order_id,
 
 customers.customer_name,
 customers.customer_id,
 items.item_id,
 items.sku,
 stores.store_id,
 stores.store_name
  )

 select * from fct_facts


 
 
 
 
 
 

