/* Write your T-SQL query statement below */

SELECT product_id, product_name
FROM Product  
WHERE product_id in (SELECT product_id FROM Sales 
                     GROUP BY product_id 
                     HAVING max(sale_date) <= '2019-03-31' and min(sale_date) >= '2019-01-01')



