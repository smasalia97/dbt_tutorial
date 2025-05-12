SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    o.order_date
FROM dbt_dataset.orders o
JOIN {{ref("stg_customers")}} c ON o.customer_id = c.customer_id
JOIN dbt_dataset.products p     ON o.product_id = p.product_id