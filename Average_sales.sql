
SELECT 
    CONCAT(ROUND(AVG(Total_sales) / 1000, 1), 'k') AS Avg_sales
FROM
    (SELECT 
        SUM(transaction_qty*unit_price) AS Total_sales
    FROM
        coffee_shop_sales
    WHERE
        MONTH(transaction_date) = 4
    GROUP BY transaction_date) AS internal_query;
    

    
    