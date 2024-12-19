# E-Commerce Sales Analytics Dashboard

This project provides an end-to-end solution for analyzing e-commerce sales data using **SQL-only workflows**. The primary goal is to clean raw data, calculate key performance indicators (KPIs), and identify top-performing products for a professional dashboard.

---

## **Features**
- **Data Cleaning**: Removes invalid transactions and calculates derived metrics (e.g., total price).
- **KPI Calculation**:
  - Total revenue
  - Number of orders
  - Average order value (AOV)
- **Product Performance**: Identifies top 5 products by revenue within each category.
- **Dashboard Integration**: Generates a final view (`sales_dashboard`) ready for use in BI tools like Tableau, Power BI, or Looker.

---

## **Project Structure**
### **SQL Scripts**
| File Name              | Description                                     |
|------------------------|-------------------------------------------------|
| `clean_sales_data.sql` | Cleans raw sales data and calculates total price.|
| `kpi_summary.sql`      | Aggregates key performance indicators (KPIs).   |
| `top_products.sql`     | Identifies top products by revenue in categories.|
| `sales_dashboard.sql`  | Combines KPI and product performance for dashboards.|

### **Database Tables**
| Table Name             | Description                                     |
|------------------------|-------------------------------------------------|
| `raw_sales_data`       | Raw transaction data (input).                   |
| `products`             | Product catalog with names and categories.      |
| `clean_sales_data`     | Cleaned transaction data with derived metrics.  |
| `kpi_summary`          | Daily KPI summary for performance tracking.     |
| `top_products`         | Top-performing products by category and revenue.|

---

## **Setup Instructions**

### **Prerequisites**
- A relational database engine (e.g., PostgreSQL, MySQL, Snowflake, or BigQuery).
- SQL client (e.g., DBeaver, pgAdmin, or a database console).
- Optional: BI tool (e.g., Tableau, Power BI) for dashboard integration.

### **Steps**
1. **Load Data**:
   - Import the `raw_sales_data` and `products` tables into your database.
2. **Execute SQL Scripts**:
   - Run the SQL scripts in the following order:
     1. `clean_sales_data.sql`
     2. `kpi_summary.sql`
     3. `top_products.sql`
     4. `sales_dashboard.sql`
3. **Verify Results**:
   - Query the generated tables (`clean_sales_data`, `kpi_summary`, `top_products`) to ensure the output matches expectations.
4. **Dashboard Integration**:
   - Use the `sales_dashboard` view as a data source in your preferred BI tool.

---

## **Example Output**

### **KPI Summary**
| sales_date | total_orders | total_revenue | average_order_value |
|------------|--------------|---------------|---------------------|
| 2025-12-01 | 120          | 15000.00      | 125.00              |

### **Top Products**
| category      | product_name    | revenue    |
|---------------|-----------------|------------|
| Electronics   | Smart Phone     | 5000.00    |
| Electronics   | Laptop          | 3000.00    |
| Home & Garden | Vacuum Cleaner  | 2000.00    |

---

## **Key Concepts**
- **SQL Window Functions**: Used to rank products by revenue.
- **Data Transformation**: Achieved through joins, filtering, and aggregation.
- **BI Integration**: The final `sales_dashboard` view is optimized for visualization.

---

## **Technologies**
- **Database**: PostgreSQL (or other SQL-compatible engines like MySQL, Snowflake).
- **Query Language**: SQL (Standard ANSI SQL).
- **BI Tools**: Tableau, Power BI, Looker (optional).

---

## **Contributing**
Contributions are welcome! Please fork the repository and submit a pull request with your improvements.

---

## **License**
This project is licensed under the [MIT License](https://opensource.org/license/mit).

---

## **Contact**
For questions or feedback, please reach out to:
- **Name**: [Joshua Parep]
- **Email**: [contact@joshuaparep.com]
- **GitHub**: [https://github.com/jparep](https://github.com/jparep)
