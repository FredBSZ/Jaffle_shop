with stg_customers as
(select * from {{ source('jaffle_shop', 'customers') }})

select * from stg_customers