--Write an SQL query to report all customers who never order anything.

SELECT c.name as Customers
FROM Customers c
WHERE c.id not in ( SELECT o.customerId FROM orders o)