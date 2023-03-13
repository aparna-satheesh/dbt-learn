-- select
--     id as order_id,
--     user_id as customer_id,
--     order_date,
--     status
-- from default.jaffle_customer_orders

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from {{ source('jaffle_shop', 'orders') }}