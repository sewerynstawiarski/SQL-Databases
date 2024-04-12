USE  coffee_store;

SELECT * FROM customers;

SELECT * FROM customers
WHERE last_name IN('Taylor', 'Bluth', 'Armstrong');

SELECT * FROM customers
WHERE first_name NOT IN ('Katie', 'John', 'George');

SELECT * FROM orders;

SELECT * FROM orders
WHERE order_time BETWEEN '2023-01-01' AND '2023-01-31 23:59:59';

SELECT * FROM orders
WHERE customer_id BETWEEN 5 and 7;

SELECT * FROM customers
WHERE last_name BETWEEN 'A' AND 'M';