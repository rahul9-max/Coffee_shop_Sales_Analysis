select count(transaction_id) as Total_orders from coffee_shop_sales
where month(transaction_date)=5;