with stg_orders as
(select * from {{ source('jaffle', 'orders') }})

select * from stg_orders