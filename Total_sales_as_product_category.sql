    SELECT 
    product_type,
    SUM(transaction_qty*unit_price) AS Total_Sales
FROM
    coffee_shop_sales
WHERE
    MONTH(transaction_date) = 5 and product_category='coffee'
GROUP BY product_type
ORDER BY Total_Sales desc