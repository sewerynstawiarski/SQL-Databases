USE coffee_store;

SELECT DISTINCT last_name FROM customers
ORDER BY last_name;

SELECT * FROM orders
WHERE product_id = 3
AND order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59.999999'
ORDER BY order_time
LIMIT 4;

SELECT name, price AS 'retail price', coffee_origin FROM products;