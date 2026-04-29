SELECT 
    Supplier,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) AS Late_Orders,
    ROUND(
        (SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS Late_Percentage
FROM supply_chain_dataset
GROUP BY Supplier
ORDER BY Late_Percentage DESC;
