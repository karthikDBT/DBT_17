{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from {{source('datafeed_schema', 'RAW_ORDERS')}} LIMIT 15
