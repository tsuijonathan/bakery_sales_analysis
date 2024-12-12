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

-- Sales on Holidays and When the Store is Open
SELECT
	s.date,
    SUM(s.net_sales) AS holiday_sales,
    s.is_store_open,
    h.is_holiday,
    h.holiday_name
FROM Sales s
JOIN Holiday h ON s.date = h.date
WHERE h.is_holiday = 1 and s.is_store_open = 1
GROUP BY s.date, s.is_store_open, h.is_holiday, h.holiday_name
ORDER BY holiday_sales DESC;

-- AVG sales on high temperature days
SELECT s.date, s.net_sales, w.mean_temp_c
FROM Sales s
JOIN Weather w ON s.date = w.date
ORDER BY s.net_sales DESC
LIMIT 10;

-- Weekly sales
SELECT
    YEAR(s.date) AS year,
    WEEK(s.date, 1) AS week_number,  -- '1' indicates weeks start on Monday
    SUM(s.net_sales) AS weekly_sales
FROM Sales s
GROUP BY YEAR(s.date), WEEK(s.date, 1)
ORDER BY year, week_number;

-- Sales by Payment Method
SELECT 
	SUM(cash) AS total_cash,
    SUM(card) AS total_card,
    SUM(gift_card) AS total_gift_card
FROM Payments;

-- Sales on snow days
SELECT s.net_sales, s.date, s.is_store_open, w.total_snow_mm
FROM Sales s
JOIN Weather w ON s.date = w.date
WHERE w.total_snow_mm > 0 AND s.is_store_open = 1
ORDER BY s.net_sales; 
    
-- Average tip amount
SELECT AVG(tip)
FROM Sales;

-- Gift Card Sales by Month
SELECT 
	DATE_FORMAT (date, '%y-%m') AS month,
    SUM(gift_card_sales)
FROM Sales
GROUP BY month
ORDER BY month;
    
-- Gift card sales 1 or 2 days before a holiday
SELECT
	s.date,
    s.gift_card_sales
FROM Sales s
JOIN Holiday h ON s.date = h.date
WHERE s.gift_card_sales > 0 AND h.is_holiday_prev_1 = 1 OR h.is_holiday_prev_2 = 1
ORDER BY s.date;

-- Total fees by month
SELECT
	DATE_FORMAT (date, '%y-%m') AS month,
    SUM(fees)
FROM Payments
GROUP BY month
ORDER BY month;

-- Deleted all rows before 2023-02-01 and all rows after 2024-11-30 as those months are not complete
DELETE FROM Holiday
WHERE date < '2023-02-01' OR date > '2024-11-30';

DELETE FROM Sales
WHERE date < '2023-02-01' OR date > '2024-11-30';

DELETE FROM Weather
WHERE date < '2023-02-01' OR date > '2024-11-30';

DELETE FROM Payments
WHERE date < '2023-02-01' OR date > '2024-11-30';

DELETE FROM Dates
WHERE date < '2023-02-01' OR date > '2024-11-30';




