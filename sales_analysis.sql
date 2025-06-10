USE sales_data;
SHOW tables;
SELECT * FROM  `online sales data` LIMIT 10;

SELECT 
    EXTRACT(YEAR FROM `Date`) AS year, 
    EXTRACT(MONTH FROM `Date`) AS month,
    SUM(`Total Revenue`) AS total_revenue, 
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM 
    `online sales data`
GROUP BY 
    EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`)
ORDER BY 
    year, month;

