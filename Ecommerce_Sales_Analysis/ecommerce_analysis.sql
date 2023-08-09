-- 1. Create a query to get the total transaction per month. Please use time frame from 01 January 2021 until 31 Desember 2021.
select
    date_format(invoice_date,'%m-%Y') month
    , count(invoice_date) total_transactions
from ecommerce_table
where year(invoice_date) = 2021
group by 1
order by 1



-- 2. Create a query to get total revenue grouped by shopping mall in 2022.
select
    shopping_mall
    , round (sum(quantity*price),2) total_revenue
from ecommerce_table
where year(invoice_date) = 2022
group by 1
order by 2 desc



-- 3. Create a query to get which payment method most used by customer and total revenue of each payment method 3 month before 01 January 2022.
select
    payment_method payment_by
    , invoice_date
    , count(payment_method) count_paymethod
    , round(sum(quantity*price),2) total_revenue
from ecommerce_table
where invoice_date < date_sub('2022-01-01', interval 3 month)
group by 1,2
order by 3 desc



-- 4. Get the total_revenue of each category_variant. 1 month after 30 April 2022.
WITH category_bef_variant AS (
    SELECT *
    FROM ecommerce_table
),
variant_make AS (
    SELECT
        *,
        DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS rank_item
    FROM category_bef_variant
),
category_variant_made AS (
    SELECT
        invoice_no,
        customer_id,
        gender,
        age,
        category,
        quantity,
        price,
        payment_method,
        invoice_date,
        shopping_mall,
        CONCAT(category, "-", rank_item) AS category_variant
    FROM variant_make
)
SELECT
    category,
    price,
    category_variant,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM category_variant_made
WHERE invoice_date > DATE_ADD('2022-04-30', INTERVAL 1 MONTH)
GROUP BY category, price, category_variant;



-- 5. Find monthly growth of total_revenue in percentage breakdown by Shopping Mall, ordered by time descendingly.
with total_revenue as
(
    select
        date_format(invoice_date,'%Y-%m') month
        , shopping_mall mall
        , round(sum(quantity*price),2) total_rev
    from ecommerce_table
    group by 1,2
    order by 1
),
prev_total_revenue as
(
    select
        *
        , lag(total_rev) over (partition by mall order by month) prevmonth_total_rev
    from total_revenue
)
select
    *
    , round((total_rev - prevmonth_total_rev)/prevmonth_total_rev*100,2) growth_prcntg
from prev_total_revenue



-- 6. Find from which age group the most transaction, and ratio percentage.
with age_gr as
(
    select
        -- age
        case
            when age >= 50 then 'Elderly Customer'
            when age < 50 and age >= 30 then 'Middle Age Customer'
            when age < 30 then 'Adolescent Customer'
          end age_group
        , count(age) total_customer
from ecommerce_table
where year(invoice_date) in (2021,2022)
group by 1
)
select
    *
    , round((total_customer/sum(total_customer) over ())*100,2) cnt_ratio_prctg
from age_gr



-- 7. Query to ge revenue ratio percentage from total revenue in each year revenue.
with revenue_per_year as
(
    select
        year(invoice_date) year
        , round(sum(price*quantity),2) total_revenue
    from ecommerce_table
    group by 1
)
select
    *
    , sum(total_revenue) over () allyears_total_revenue
    , round(total_revenue/sum(total_revenue) over (),2) ratio_prcntg
from revenue_per_year



-- Data for Visualization
WITH category_bef_variant AS (
    SELECT *
    FROM ecommerce_table
),
variant_make AS (
    SELECT
        *,
        DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS rank_item
    FROM category_bef_variant
)
SELECT
    invoice_no,
    customer_id,
    gender,
    age,
    category,
    quantity,
    price,
    payment_method,
    invoice_date,
    shopping_mall,
    CONCAT(category, "-", rank_item) AS category_variant,
    CASE
        WHEN age >= 50 THEN 'Elderly Customer'
        WHEN age < 50 AND age >= 30 THEN 'Middle Age Customer'
        WHEN age < 30 THEN 'Adolescent Customer'
    END AS age_group
FROM variant_make
WHERE YEAR(invoice_date) IN (2021, 2022);
