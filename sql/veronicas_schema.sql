-- Creating the datebase for Veronica's bakery
CREATE DATABASE veronicas_sales;
USE veronicas_sales;

-- Date Table
CREATE TABLE Date (
	date DATE PRIMARY KEY,
    day VARCHAR(20)
);

-- Sales TABLE
CREATE TABLE Sales (
	date DATE PRIMARY KEY,
    gross_sales DECIMAL(10, 2),
    returns DECIMAL(10.2),
    discounts_comps DECIMAL(10, 2),
    net_sales DECIMAL(10, 2),
    gift_card_sales DECIMAL(10, 2),
    tax DECIMAL(10, 2),
    tip DECIMAL(10, 2),
    refunds_by_amount DECIMAL(10, 2),
    is_store_open BOOLEAN,
    FOREIGN KEY (date) REFERENCES Date(date)
);

-- Weather Table
CREATE TABLE Weather (
	date DATE PRIMARY KEY,
    mean_temp_c DECIMAL(5,2),
    total_rain_mm DECIMAL(5,2),
    total_precip_mm DECIMAL(5,2),
    total_snow_mm DECIMAL(5,2),
	FOREIGN KEY (date) REFERENCES Date(date)
);

-- Holiday Table
CREATE TABLE Holiday (
	date DATE PRIMARY KEY,
    holiday_name VARCHAR(255),
    is_holiday BOOLEAN,
    is_holiday_prev_1 BOOLEAN,
    is_holiday_next_1 BOOLEAN,
    is_holiday_prev_2 BOOLEAN,
    is_holiday_next_2 BOOLEAN,
	FOREIGN KEY (date) REFERENCES Date(date)
);

-- Payments Table
CREATE TABLE Payments (
date DATE PRIMARY KEY,
cash DECIMAL (10,2),
card DECIMAL (10,2),
gift_card DECIMAL (10,2),
fees DECIMAL (10,2),
FOREIGN KEY (date) REFERENCES Date(date)
);
    
    
    