-- Month on Month Growth %
with monthly_sales as (
    select 
        month(transaction_date) as month,
        count(transaction_id) as total_orders
    from coffee_shop_sales
    group by month(transaction_date)
)
select 
    month,
    total_orders,
    round(
        (total_orders - lag(total_orders,1) over(order by month)) 
        / lag(total_orders,1) over(order by month) * 100, 2
    ) as mom_increase_percentage
from monthly_sales;
