SELECT *
FROM `cleaned dataset 1`;

DESCRIBE `cleaned dataset 1`;

SELECT product_name, SUM(profit) AS total_profit
FROM `cleaned dataset 1`
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM `cleaned dataset 1`
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT region, SUM(sales) AS total_sales
FROM `cleaned dataset 1`
GROUP BY region
ORDER BY total_sales DESC;

SELECT category, AVG(profit) AS average_profit
FROM `cleaned dataset 1`
GROUP BY category;

SELECT category, AVG(discount) AS avg_discount
FROM `cleaned dataset 1`
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 1;

SELECT *
FROM `cleaned dataset 1`
WHERE profit < 0;

SELECT order_date
FROM `cleaned dataset 1`
LIMIT 10;

DESCRIBE `cleaned dataset 1`;

SET SQL_SAFE_UPDATES = 0;

UPDATE `cleaned dataset 1`
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

ALTER TABLE `cleaned dataset 1`
MODIFY order_date DATE;

SET SQL_SAFE_UPDATES = 1;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM `cleaned dataset 1`
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT market, SUM(sales) AS total_revenue
FROM `cleaned dataset 1`
GROUP BY market
ORDER BY total_revenue DESC;

SELECT Sub_Category, SUM(profit) AS total_profit
FROM `cleaned dataset 1`
GROUP BY Sub_Category
ORDER BY total_profit DESC
LIMIT 10;

SELECT ship_mode, COUNT(*) AS total_orders
FROM `cleaned dataset 1`
GROUP BY ship_mode
ORDER BY total_orders DESC;

SELECT
    Category,
    Product_Name,
    SUM(profit) AS total_profit
FROM `cleaned dataset 1`
GROUP BY Category, Product_Name
ORDER BY total_profit DESC
LIMIT 1;
