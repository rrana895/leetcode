/* Write your T-SQL query statement below */

SELECT distinct stock_name, SUM (
    CASE
        WHEN operation = 'Buy' THEN -price
        ELSE price
    END
) AS capital_gain_loss
from Stocks
group by stock_name

