with monthly_sales as (
    select 
        month(transaction_date) as month,
        round(sum(transaction_qty * unit_price), 1) as total_sales
    from coffee_shop_sales
    group by month(transaction_date)
)
select 
    month,
    total_sales,
    round(
        (total_sales - lag(total_sales,1) over(order by month)) 
        / lag(total_sales,1) over(order by month) * 100, 2
    ) as mom_increase_percentage
from monthly_sales;
