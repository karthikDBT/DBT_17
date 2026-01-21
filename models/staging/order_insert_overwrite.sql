{{ config(materialized="incremental",
         incremental_strategy="insert_overwrite",
         
) }}

select * from {{source('datafeed_schema','RAW_ORDERS')}} limit 7
