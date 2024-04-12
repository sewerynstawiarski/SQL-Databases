USE coffee_store;

SELECT * FROM products;

SELECT * FROM products
-- WHERE price != 3.00;
WHERE price <> 3.00;

SELECT * FROM products
WHERE price >= 3.00;

SELECT * FROM products
WHERE price > 3.00;

SELECT * FROM products
WHERE price < 3.00;

SELECT * FROM products
WHERE price <= 3.00;

SELECT * FROM products
WHERE name < 'D';

SELECT * FROM customers;

SELECT * FROM customers
WHERE phone_number IS NULL;

SELECT * FROM customers
WHERE phone_number IS NOT NULL;
