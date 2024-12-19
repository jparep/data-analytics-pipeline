CREATE VIEW sales_dashboard AS
SELECT
    k.sales_date,
    k.total_orders,
    k.total_revenue,
    k.average_order_value,
    p.category,
    p.product_name,
    p.revenue
FROM
    kpi_summary k
LEFT JOIN
    top_products p
ON
    k.sales_date BETWEEN '2025-01-01' AND '2025-12-31';
