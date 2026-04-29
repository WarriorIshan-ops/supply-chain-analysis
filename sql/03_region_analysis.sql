SELECT 
    Region,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Delay_Days), 2) AS Avg_Delay,
    ROUND(
        (SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS Late_Percentage
FROM supply_chain_dataset
GROUP BY Region
ORDER BY Late_Percentage DESC;
