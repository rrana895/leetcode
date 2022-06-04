/* Write your T-SQL query statement below */

Select id, 
Case 
    When p_id is null then 'Root' 
    When id in (select p_id from tree) then 'Inner'
    else 'Leaf' 
END as type
From Tree

Order by id asc

