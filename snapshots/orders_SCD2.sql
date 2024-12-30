{% snapshot orders_SCD2 %}

{% set new_schema= target.schema + '_snapshot' %}

{{config
    (target_database = 'analytics',
    target_schema = new_schema ,
    unique_key = 'ID',
    strategy = 'timestamp',
    updated_at ='ordered_at')
}}

select * from {{ source('jaffle', 'orders') }}

{% endsnapshot %}