/* Write your T-SQL query statement below */

SELECT emp_id, Sum(out_time - in_time) AS total_time, event_day as day
FROM Employees
GROUP BY emp_id, event_day