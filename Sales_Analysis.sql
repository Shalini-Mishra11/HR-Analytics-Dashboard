USE sales_analysis;
CREATE TABLE sales_data (
    order_id VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    region VARCHAR(50),
    product_name VARCHAR(255),
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);

SELECT product_name, SUM(profit) AS total_profit
FROM `clean dataset`
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM `clean dataset`
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT region, SUM(sales) AS total_sales
FROM `clean dataset`
GROUP BY region
ORDER BY total_sales DESC;

SELECT category, AVG(profit) AS average_profit
FROM `clean dataset`
GROUP BY category;

SELECT category, AVG(discount) AS avg_discount
FROM `clean dataset`
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 1;

SELECT *
FROM `clean dataset`
WHERE profit < 0;

SELECT order_date
FROM `clean dataset`
LIMIT 10;

DESCRIBE `clean dataset`;

SET SQL_SAFE_UPDATES = 0;

UPDATE `clean dataset`
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

ALTER TABLE `clean dataset`
MODIFY order_date DATE;

SET SQL_SAFE_UPDATES = 1;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM `clean dataset`
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT market, SUM(sales) AS total_revenue
FROM `clean dataset`
GROUP BY market
ORDER BY total_revenue DESC;

SELECT Sub_Category, SUM(profit) AS total_profit
FROM `clean dataset`
GROUP BY Sub_Category
ORDER BY total_profit DESC
LIMIT 10;

SELECT ship_mode, COUNT(*) AS total_orders
FROM `clean dataset`
GROUP BY ship_mode
ORDER BY total_orders DESC;

SELECT
    Category,
    Product_Name,
    SUM(profit) AS total_profit
FROM `clean dataset`
GROUP BY Category, Product_Name
ORDER BY total_profit DESC
LIMIT 1;