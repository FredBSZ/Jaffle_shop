{% macro cents_to_dollars(column_name, decimal_places=2) -%}
    round( 1.0 * {{ column_name }} / 100, {{ decimal_places }})
{%- endmacro %}

 

 {# 
 to tun the macro, use the following sql statement
 
 select 
order_amount,
{{cents_to_dollars('order_amount')}}
from {{ ref('stg_orders') }}

#}