USE coffee_store;

UPDATE orders
SET customer_id = null
WHERE id IN (1,3,5);

SELECT * FROM customers;
SELECT * FROM orders;

SELECT 	o.*, c.* FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time;

SELECT o.*, c.* FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
ORDER BY o.id;

SELECT o.*, c.* FROM customers c
RIGHT JOIN orders o ON o.customer_id = c.id
ORDER BY o.id;

SELECT o.*, c.* FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time;
