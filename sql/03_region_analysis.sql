/*
Goal: Identify regions with highest delays
*/

SELECT 
    Region,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) AS delayed_orders,
    ROUND(
        SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 
        2
    ) AS delay_percentage
FROM supply_chain_dataset
GROUP BY Region
ORDER BY delay_percentage DESC;
