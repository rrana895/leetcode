/* 
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your T-SQL query statement below
 */

DELETE from Person 
WHERE Id  not in (select id from (select min(Id) as Id 
                            from Person group by Email ) as p)