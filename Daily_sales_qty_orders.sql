-- CALENDAR TABLE – DAILY SALES, QUANTITY and TOTAL ORDERS
SELECT
    concat(round(sum(unit_price*transaction_qty)/1000,1),'k') as Total_sales,
	concat(round(SUM(transaction_qty)/1000,1),'k') AS total_quantity_sold,
    concat(round(COUNT(transaction_id)/1000,1),'k') AS total_orders
FROM 
    coffee_shop_sales
WHERE 
    transaction_date='2023-05-18';
    

 
 
    
