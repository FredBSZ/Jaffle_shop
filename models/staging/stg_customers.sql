with stg_customers as
(select * from {{source('jaffle','customers')}})

select * from stg_customers
