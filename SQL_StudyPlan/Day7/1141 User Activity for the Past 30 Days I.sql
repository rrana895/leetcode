/* Write your T-SQL query statement below */

SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users 
FROM
    Activity
WHERE activity_date between '2019-06-28' and '2019-07-27'
GROUP BY
    activity_date