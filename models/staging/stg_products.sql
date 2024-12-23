with stg_products as
(select 
description as product_desc,
name as product_name,
price,
sku,
type

 from {{ source('jaffle', 'products') }})

select * from stg_products