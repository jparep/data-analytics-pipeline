CREATE TABLE clean_sales_data AS
SELECT
    order_id,
    customer_id,
    order_date,
    product_id,
    quantity,
    price,
    quantity * price AS total_price
FROM
    raw_sales_data
WHERE
    status = 'Completed'
    AND quantity > 0
    AND price > 0;
