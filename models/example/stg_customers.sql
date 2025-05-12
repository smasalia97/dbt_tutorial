WITH stg_customers AS (
    SELECT
        customer_id, 
        CONCAT(first_name, ' ', last_name) customer_name,
        email email_address,
        address billing_address
    FROM dbt_dataset.customer
)

SELECT * FROM stg_customers