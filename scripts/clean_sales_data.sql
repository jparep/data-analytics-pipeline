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

CREATE INDEX idx_status ON raw_sales_data (status);
CREATE INDEX idx_quantity ON raw_sales_data (quantity);
CREATE INDEX idx_price ON raw_sales_data (price);
CREATE INDEX idx_order_date ON raw_sales_data (order_date);
