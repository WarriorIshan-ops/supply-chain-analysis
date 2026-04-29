/*
File: 01_data_exploration.sql
Purpose: Initial exploration of supply chain dataset
Author: Your Name

Goal:
Understand dataset size, structure, and delay distribution
*/

-- ============================
-- 1. Preview Dataset
-- ============================
SELECT * 
FROM supply_chain_dataset
LIMIT 10;

-- ============================
-- 2. Total Number of Orders
-- ============================
SELECT COUNT(*) AS total_orders
FROM supply_chain_dataset;

-- ============================
-- 3. Check Delivery Status Distribution
-- ============================
SELECT 
    Delivery_Status,
    COUNT(*) AS order_count
FROM supply_chain_dataset
GROUP BY Delivery_Status;

-- ============================
-- 4. Average Delay Days
-- ============================
SELECT 
    ROUND(AVG(Delay_Days), 2) AS avg_delay_days
FROM supply_chain_dataset;

-- ============================
-- 5. Missing Values Check
-- ============================
SELECT 
    COUNT(*) - COUNT(Delay_Days) AS missing_delay_days
FROM supply_chain_dataset;
