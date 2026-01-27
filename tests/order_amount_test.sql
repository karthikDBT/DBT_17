select
    id,
    spent
 from {{ source('datafeed_schema', 'SNAP_CUSTOMERS') }}
having spent <= 0
