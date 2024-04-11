CREATE DATABASE coffe_store;
SHOW DATABASES;	

USE coffe_store;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    price DECIMAL(3 , 2 )
);

CREATE TABLE customers (
id INT auto_increment primary key,
first_name varchar(20),
gender ENUM('M' , 'F'),
last_name varchar(50),
phone_number varchar(15)
);

CREATE TABLE orders (
id INT auto_increment PRIMARY KEY,
product_id INT,
customer_id INT,
order_time DATETIME,
FOREIGN KEY (product_id) REFERENCES products(id),
FOREIGN KEY (customer_id) REFERENCES customers(id)
);

SHOW TABLES;