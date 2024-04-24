USE cinema_booking_system;

SELECT concat(first_name, last_name) AS full_name FROM customers;

SELECT concat("This is ", first_name, " ", last_name, "'s email address ", email) AS customer_email FROM customers;

SELECT substring("Example", 3,3) AS Sub;

SELECT substring("Example", 3) AS Sub;

-- substring(string, start, length) / indexes start from 1

SELECT * FROM films;
SELECT substring(name, 1, 4) AS short_name FROM films;

SELECT substring(name, 5, 6) AS short_name FROM films;

SELECT substring(name, -2, 2) AS short_name FROM films;
 -- -2 means second last letter
 
SELECT substring(name, -6, 5) AS short_name FROM films;
 
SELECT name FROM rooms;
 
SELECT upper(name) AS name FROM rooms;
 
SELECT lower(name) AS name FROM rooms;