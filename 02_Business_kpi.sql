-- Business KPI Questions
-- Total revenue generated
select sum(Final_Price)from ecommerce_details;

-- Average order value
select avg(Final_Price) from ecommerce_details;

-- Total discount amount given
select sum(`Discount (%)`) from ecommerce_details;

-- average discount percentage
select avg(Discount) as total_average from ecommerce_details;
