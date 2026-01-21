{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('datafeed_schema', 'RAW_ORDERS')}} limit 10
