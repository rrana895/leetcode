/* Write your T-SQL query statement below */

SELECT Email
FROM Person
GROUP BY email
HAVING Count(email) > 1