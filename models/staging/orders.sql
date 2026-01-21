{{config(materialized = 'table')}}

with tb1 as (
    select
    id,
    user_id,
    order_date,
    status
    FROM {{ source('datafeed_schema', 'RAW_ORDERS')}}
)

SELECT * FROM tb1