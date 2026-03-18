-- Advanced SQL
-- Show transactions where discount is higher than the average discount.
select * from ecommerce_details 
where discount > (select avg(discount) from ecommerce_details);

-- Rank products by total revenue using window functions.
select product_id, sum(final_price) as Total_revenue,
rank() over(order by sum(final_price) desc) as Rank_no
from ecommerce_details
group by product_id;

-- Find the second highest transaction value.
select distinct final_price from ecommerce_details
order by final_price desc
limit 1 offset 1;

-- Find users who made more purchases than the average user.
select user_id from ecommerce_details
group by user_id 
having count(*) > (
    select avg(purchase_count)
    from (
    select user_id, count(*) as purchase_count
    from ecommerce_details 
    group by user_id
    )t
);