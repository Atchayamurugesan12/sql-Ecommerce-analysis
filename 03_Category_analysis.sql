-- Category Performance Analysis
-- Which category generated the highest revenue?
select category, sum(final_price) as Revenue
from ecommerce_details
group by category
order by Revenue desc
limit 1;

-- Which category has the highest average discount?
select category, avg(discount) as highest_discount
from ecommerce_details 
group by category
order by highest_discount desc;

-- Which category has the most transactions?
select category, count(*) as total_transaction
from ecommerce_details
group by category
order by total_transaction desc;

-- Which category has the highest average final price?
select category, avg(final_price) as Total_average
from ecommerce_details
group by category
order by Total_average desc;
