USE veronicas_sales;

SHOW tables;

DESCRIBE Dates;

SELECT min(date) AS start_date, max(date) AS max_date 
FROM Sales;

SELECT COUNT(*) FROM Sales;
SELECT COUNT(*) FROM Weather;

-- Total Sales by Month
SELECT 
DATE_FORMAT(date, '%Y-%m') AS month,
SUM(net_sales) AS total_sales
FROM Sales
GROUP BY month
ORDER BY month;

-- Total Sales by Day
SELECT d.day,
SUM(s.net_sales) AS total_sales
FROM Sales s
JOIN Dates d ON s.date = d.date
GROUP BY d.day
ORDER BY total_sales DESC;

-- Top 5 Sales Days
SELECT date, net_sales
FROM Sales
ORDER BY net_sales DESC
LIMIT 5;

-- Average Daily Sales
SELECT 
	AVG(net_sales) AS average_daily_sales
FROM 
	Sales
WHERE 
	gross_sales > 0;

-- Minimum and Maximum Sales 
SELECT 
    MIN(net_sales) AS min_sales,
    MAX(net_sales) AS max_sales
FROM 
    Sales
WHERE 
    gross_sales > 0;

-- Days with Sales less than 100
SELECT *
FROM Sales
WHERE gross_sales < 100 and is_store_open = 1;

-- Sales on Holidays
SELECT
	s.date,
    s.net_sales,
    h.is_holiday
    
    