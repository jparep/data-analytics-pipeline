CREATE TABLE top_products AS
SELECT
    p.category,
    p.product_name,
    SUM(s.total_price) AS revenue,
    RANK() OVER (PARTITION BY p.category ORDER BY SUM(s.total_price) DESC) AS rank
FROM
    clean_sales_data s
JOIN
    products p
ON
    s.product_id = p.product_id
GROUP BY
    p.category, p.product_name
HAVING
    rank <= 5;
