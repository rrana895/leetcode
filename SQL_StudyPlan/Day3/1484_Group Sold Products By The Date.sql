/* Write your T-SQL query statement below */



with no_duplicate_activities
AS
(
    SELECT
        sell_date  , product
    FROM Activities
    GROUP BY sell_date, product
)
 
select sell_date, count(*) as num_sold, string_agg(product, ',') WITHIN GROUP (ORDER BY product ASC) as products
from no_duplicate_activities
group by sell_date
