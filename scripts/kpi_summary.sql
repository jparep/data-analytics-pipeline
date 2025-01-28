CREATE TABLE kpi_summary AS
SELECT
    order_date AS sales_date,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(total_price) AS total_revenue,
    SUM(total_price) / NULLIF(COUNT(DISTINCT order_id), 0) AS average_order_value
FROM
    clean_sales_data
GROUP BY
    order_date;

CREATE INDEX idx_order_date ON clean_sales_data (order_date);
