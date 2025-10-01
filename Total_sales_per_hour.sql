    SELECT 
    hour(transaction_time) as times,
    SUM(transaction_qty*unit_price) AS Total_Sales
FROM
    coffee_shop_sales
WHERE
    MONTH(transaction_date) = 5
GROUP BY times
ORDER BY times ;