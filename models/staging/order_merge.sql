{{ config(
materialized="incremental",
unique_key ='id',
incremental_strategy= "merge"
) }}
select * from {{source('datafeed_schema', 'RAW_ORDERS')}} limit 15
