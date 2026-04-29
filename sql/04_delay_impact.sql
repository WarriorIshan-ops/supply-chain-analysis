/*
Goal: Measure overall business impact of delays
*/

-- Total delay days
SELECT 
    SUM(Delay_Days) AS total_delay_days
FROM supply_chain_dataset;

-- Overall delay percentage
SELECT 
    ROUND(
        SUM(CASE WHEN Delivery_Status = 'Delayed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS overall_delay_percentage
FROM supply_chain_dataset;
