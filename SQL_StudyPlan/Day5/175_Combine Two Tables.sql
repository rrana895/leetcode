/* Write your T-SQL query statement below */

SELECT P.firstName, P.lastName, A.city, A.state
FROM Person P
LEFT JOIN Address A on A.personId = P.personId

