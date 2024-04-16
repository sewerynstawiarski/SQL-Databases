USE coffee_store;

SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM customers;

SELECT p.name, p.price, c.first_name, c.last_name, o.order_time FROM  products p
JOIN orders o ON  o.product_id = p.id
JOIN customers c ON c.id = o.customer_id
WHERE c.last_name = 'Martin'
ORDER BY o.order_time;