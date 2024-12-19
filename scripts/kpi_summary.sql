CREATE TABLE kpi_summary AS
SELECT
    DATE(order_date) AS sales_date,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(total_price) AS total_revenue,
    SUM(total_price) / NULLIF(COUNT(DISTINCT order_id), 0) AS average_order_value
FROM
    clean_sales_data
GROUP BY
    DATE(order_date);
