USE coffee_store;

SELECT o.id, c.phone_number, p.id FROM orders o
JOIN customers c ON c.id = o.customer_id
JOIN products p ON  o.product_id = p.id
WHERE p.id = 4
ORDER BY o.id;

 SELECT p.name, o.order_time FROM products p
 LEFT JOIN  orders o ON p.id = o.product_id
 WHERE o.order_time BETWEEN '2023-01-01' AND '2023-03-31 23:59:59.9999'
 AND p.name = 'Filter'
 ORDER BY p.name;
 
 SELECT p.name, p.price, o.order_time, c.gender FROM products p
 JOIN  orders o ON o.product_id = p.id
 JOIN customers c ON c.id = o.customer_id
 WHERE c.gender = 'F'
 AND o.order_time BETWEEN '2023-01-01' AND '2023-01-31 23:59:59.9999'
 ORDER BY o.order_time;
 