-- Date / Time Analysis
-- Total sales per month.
select date_format(str_to_date(purchase_date, '%d-%m-%y'), '%m-%y') as Month_sales,
sum(final_price) as total_sales
from ecommerce_details 
group by month_sales;

-- Which month had the highest revenue?
select date_format(str_to_date(purchase_date, '%d-%m-%y'),'%m-%y') as monthly_sales,
sum(final_price) as total_sales
from ecommerce_details
group by monthly_sales
order by total_sales desc
limit 1;

-- Number of daily purchases.
select purchase_date, count(*) as daily_purchases
from ecommerce_details
group by purchase_date;
