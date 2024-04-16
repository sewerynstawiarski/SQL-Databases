USE coffee_store;

SELECT * FROm orders;
SELECT * FROM products;

SELECT  products.name, orders.order_time FROM ORDERS
INNER JOIN products ON orders.product_id = products.id;

SELECT p.name, o.order_time FROM orders AS o
JOIN  products p ON o.product_id = p.id
WHERE o.product_id = 5
ORDER BY order_time
LIMIt 5;