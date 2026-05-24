{{ config(materialized='view') }}

with source as (
    select * from {{ ref('orders') }}
),

staged as (
    select
        id          as order_id,
        user_id,
        order_date,
        status,
        case
            when status = 'completed' then true
            else false
        end         as is_completed
    from source
)

select * from staged