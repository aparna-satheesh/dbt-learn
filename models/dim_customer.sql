SELECT
    customers.id AS customer_id,
    customers.first_name,
    customers.last_name,
    MIN(orders.order_date) AS first_order_date,
    MAX(orders.order_date) AS most_recent_order_date,
    COALESCE(COUNT(orders.id), 0) AS number_of_orders
FROM
    default.jaffle_shop_customers AS customers
    LEFT JOIN default.jaffle_shop_orders AS orders ON customers.id = orders.user_id
GROUP BY
    customers.id,
    customers.first_name,
    customers.last_name;
