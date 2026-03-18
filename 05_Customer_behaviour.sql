-- Customer Behavior Analysis
-- Which user spent the most money?
select user_id, sum(final_price) as Total_price
from ecommerce_details
group by user_id
order by Total_price desc
limit 1;

-- Top 5 users by total spending.
select user_id, sum(final_price) as Total_spent
from ecommerce_details
group by user_id
order by Total_spent desc
limit 5;

-- How many purchases each user made?
select user_id, count(*) as Total_purchase
from ecommerce_details
group by user_id;

-- Which user received the highest total discount?
select user_id, sum(discount) as Total_discount
from ecommerce_details
group by user_id
order by Total_discount desc
limit 1;

-- Product Analysis
-- Which product generated the highest revenue?
select product_id, sum(final_price) as Total_revenue
from ecommerce_details
group by product_id
order by Total_revenue desc
limit 1;

-- Top 10 most expensive purchases.
select * from ecommerce_details
order by final_price desc
limit 10;

