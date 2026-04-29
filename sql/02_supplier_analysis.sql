/*
Goal: Identify suppliers contributing most to delays
*/

-- Total delay days by supplier
SELECT 
    Supplier,
    SUM(Delay_Days) AS total_delay_days
FROM supply_chain_dataset
GROUP BY Supplier
ORDER BY total_delay_days DESC;

-- Delay rate by supplier
SELECT 
    Supplier,
    ROUND(AVG(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) * 100, 2) AS delay_percentage
FROM supply_chain_dataset
GROUP BY Supplier
ORDER BY delay_percentage DESC;
