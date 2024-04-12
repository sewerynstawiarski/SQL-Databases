USE coffee_store;

SELECT first_name, phone_number FROM customers
WHERE last_name = 'Bluth' AND gender = 'F';

SELECT name, price, coffee_origin FROM products
WHERE price > 3.00 OR coffee_origin = 'Sri lanka';

SELECT * FROM customers
WHERE phone_number IS NULL
AND gender = 'M';