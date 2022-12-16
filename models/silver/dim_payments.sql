
{{ config( alias='payments',
file_format='delta',
schema = 'silver',
partition_by=['ing_date'],
materialized='incremental',
incremental_strategy='merge',
location_root='dbfs:/mnt/cntdlt/source/silver/'
)}}

select *
from {{ source('bronze', 'payments') }}
where ing_date={{ var('ing_date') }}
