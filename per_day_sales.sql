    SELECT 
    DAY(transaction_date) AS day_of_month,
    SUM(transaction_qty*unit_price) AS Total_Sales
FROM
    coffee_shop_sales
WHERE
    MONTH(transaction_date) = 5
GROUP BY transaction_date
ORDER BY transaction_date