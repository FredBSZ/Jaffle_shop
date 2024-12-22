with stg_customers as
(select 

 id as customer_id
,name as customer_name

 from {{source('jaffle','customers')}})

select * from stg_customers
