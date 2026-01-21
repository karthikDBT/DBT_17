{{ config(materialized = 'ephemeral')}}

WITH tb1 as(
    select
    id ,
    first_name,
    last_name
    from {{source('datafeed_schema','RAW_CUSTOMER')}})
select * from tb1