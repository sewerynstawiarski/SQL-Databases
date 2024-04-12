USE coffee_store;

SELECT name, price, coffee_origin FROM products
WHERE coffee_origin IN ('Colombia', 'Indonesia')
ORDER BY name;

SELECT * FROM orders;

SELECT * FROM orders
WHERE customer_id IN ('19', '20', '21', '24')
-- AND 	YEAR(order_time) = 2023 AND month(order_time) = 2;
AND order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59.99999';

SELECT first_name, phone_number FROM customers
WHERE last_name LIKE '%ar%';
