USE cinema_booking_system;

SELECT concat(name," - ", length_min) AS films_length FROM films;

SELECT substring(email, 5) AS emails_end FROM customers; 

SELECT lower(first_name), upper(last_name) FROM customers
WHERE last_name = 'Smith';

SELECT substring(name, -3) AS last_letters FROM films;

SELECT concat(substring(first_name, 1, 3)," ", substring(last_name, 1, 3)) AS alias FR_OM customers;