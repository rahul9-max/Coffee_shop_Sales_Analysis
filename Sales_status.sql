select day_of_month,
    case
    when Total_sales>Avg_sales then 'Above average'
    when Total_sales<Avg_sales then 'Below average'
    else 'Equals to Average'
    end as sales_status,
    Total_sales from
    (SELECT 
    DAY(transaction_date) AS day_of_month,
    SUM(transaction_qty*unit_price) AS Total_Sales,
    AVG(SUM(transaction_qty*unit_price)) over() as Avg_sales
FROM
    coffee_shop_sales
WHERE
    MONTH(transaction_date) = 5
GROUP BY transaction_date) as sales_data
ORDER BY day_of_month
    
    
