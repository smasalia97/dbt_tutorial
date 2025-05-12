-- {{ config(materialized='view') }} -- One of the two ways
-- Since only models folder is set of table for materialized part, views folder would be by default materialized to view

SELECT
    customer_id,
    CONCAT(first_name, ' ', last_name) customer_name,
    email email_address,
    address billing_address
FROM dbt_dataset.customer