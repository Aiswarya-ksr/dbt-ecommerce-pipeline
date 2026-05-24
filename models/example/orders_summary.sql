{{ config(materialized='table') }}

with orders as (
    select * from {{ ref('stg_orders') }}
)

select
    status,
    count(*)                                    as total_orders,
    count(case when is_completed then 1 end)    as completed_orders,
    min(order_date)                             as first_order_date,
    max(order_date)                             as last_order_date
from orders
group by status
order by total_orders desc