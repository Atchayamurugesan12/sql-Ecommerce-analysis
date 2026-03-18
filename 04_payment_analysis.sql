-- Payment Analysis
-- Which payment method is used the most?
select Payment_method, count(*) as Total_payments
from ecommerce_details
group by Payment_Method
order by Total_payments desc;

-- What is the total revenue by each payment method?
select payment_method, sum(final_price) as Total_revenue
from ecommerce_details
group by payment_method;

-- Which payment method generates the highest revenue?
select payment_method, sum(final_price) as Total_revenue
from ecommerce_details
group by payment_method
order by Total_revenue desc
limit 1;
