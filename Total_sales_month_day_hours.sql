    SELECT 
    SUM(transaction_qty*unit_price) AS Total_Sales,
    SUM(transaction_qty) AS Total_Qty,
    count(*) as total_orders
FROM
    coffee_shop_sales
WHERE
    MONTH(transaction_date) = 5
    AND dayofweek(transaction_date)=2
    AND hour(transaction_time)=8
