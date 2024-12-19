with 
agg as (
    select 
        ordered_at,
        sum(order_total) as order_revenue 
    from stg_orders 
    group by 1
)

select * from agg