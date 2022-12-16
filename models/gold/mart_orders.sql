

{{ config( alias='order_agg',
file_format='delta',
schema = 'gold',
partition_by=['ing_date'],
materialized='incremental',
incremental_strategy='merge',
location_root='dbfs:/mnt/cntdlt/source/gold/'
)}}

select
o.order_date,p.payment_method,
count(o.id) as total_num_order,
sum(p.amount) as total_amt_order,
{{ var('ing_date') }} as ing_date
from  {{ ref('fact_orders') }}  o
join  {{ ref('dim_payments') }} p
on p.order_id = o.id
where o.status not in ('returned')
and   o.ing_date={{ var('ing_date') }}
group by o.order_date,p.payment_method
