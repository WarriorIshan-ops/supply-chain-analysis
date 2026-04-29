SELECT 
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) AS Delayed_Orders,
    ROUND(
        (SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS Delay_Percentage,
    SUM(Delay_Days) AS Total_Delay_Days
FROM supply_chain_dataset;
