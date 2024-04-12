USE coffee_store;

SELECT * FROM customers;

SELECT * FROM customers
WHERE last_name LIKE 'W%';

SELECT * FROM customers
WHERE last_name LIKE '%o%';

SELECT * FROM customers
WHERE first_name LIKE '%o%';

SELECT * FROM customers
WHERE first_name LIKE '_o_';

SELECT * FROM customers
WHERE first_name LIKE '_O__';

SELECT * FROM products;

SELECT * FROM products
WHERE price LIKE '3%';

SELECT * FROM products
-- ORDER BY price ASC;
ORDER BY price DESC;

SELECT * FROM customers
ORDER BY last_name DESC;

SELECT * FROM customers
WHERE last_name = 'Bluth'
ORDER BY last_name, first_name;

SELECT * FROM orders
-- ORDER BY order_time;
ORDER BY order_time DESC;