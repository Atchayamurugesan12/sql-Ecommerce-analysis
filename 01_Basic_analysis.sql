-- Basic Data Understanding
-- Total transaction in the dataset
select count(*) from ecommerce_details;

-- How many unique users made purchases?
select count(distinct user_id)
from ecommerce_details;

-- How many unique products were sold?
select count(distinct product_id) from ecommerce_details;

-- List all available product categories.
select distinct category from ecommerce_details;
