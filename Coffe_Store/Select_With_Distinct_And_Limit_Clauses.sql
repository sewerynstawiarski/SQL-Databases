USE coffee_store;

SELECT coffee_origin FROM products;

SELECT DISTINCT coffee_origin FROM products;

SELECT DISTINCT coffee_origin, price FROM products;

SELECT DISTINCT customer_id FROM  orders
WHERE order_time  BETWEEN '2023-02-01' AND '2023-02-28 23:59:59.9999'
ORDER BY customer_id;

SELECT DISTINCT customer_id, product_id FROM  orders
WHERE order_time  BETWEEN '2023-02-01' AND '2023-02-28 23:59:59.9999'
ORDER BY customer_id;

SELECT * FROM customers;

SELECT * FROM customers
LIMIT 5;

SELECT * FROM customers
LIMIT 5 OFFSET 5;

SELECT * FROM customers
LIMIT 12,3;
-- LIMIT 3 OFFSET 12;

SELECT * FROM customers
LIMIT 10 OFFSET 5;

SELECT * FROM customers
ORDER BY last_name
LIMIT 10;