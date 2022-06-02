/* Write your T-SQL query statement below */
SELECT user_id, UPPER(LEFT(name, 1)) + LOWER(SUBSTRING(name, 2, len(name))) as name
FROM Users
order by user_id asc