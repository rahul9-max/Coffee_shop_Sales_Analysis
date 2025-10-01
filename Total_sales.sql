-- Calculate the Total Sales

SELECT 
    ROUND(SUM(transaction_qty * unit_price), 1) AS total_sales
FROM
    coffee_shop_sales
WHERE
    MONTH(transaction_date) = 5