with stg_payments as

(select 

orderid as order_id,
id as payment_id,
amount,
paymentmethod as payment_method,
status,



 from {{ source('stripe', 'payment') }})

 select * from stg_payments