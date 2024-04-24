SELECT * FROM bookings;

SELECT count(customer_id) AS customer_10_bookings FROM bookings WHERE customer_id = 10;

SELECT * FROM screenings;

SELECT * FROM films;

SELECT count(film_id) AS Blade_Runner_Screenings_October_2022 FROM screenings
JOIN films ON screenings.film_id = films.id
WHERE films.name = 'Blade Runner 2049'
AND screenings.start_time BETWEEN '2022-10-01' AND '2022-10-31 23:59:59.9999';

SELECT count(film_id) AS Blade_Runner_Screenings_October_2022 FROM screenings
JOIN films ON screenings.film_id = films.id
WHERE films.name = 'Blade Runner 2049'
AND month(screenings.start_time) = 10
AND year(screenings.start_time) = 2022;

SELECT * FROM customers;

SELECT * FROM bookings;

SELECT * FROM screenings;

DESCRIBE customers;

SELECT count(email) AS unique_customers_in_April_2023 FROM customers
JOIN bookings ON customers.id = bookings.customer_id
JOIN screenings ON screenings.id = bookings.screening_id
WHERE screenings.start_time BETWEEN '2023-04-01' AND '2023-04-30 23:59:59.9999';
#should have used 'distinct key word', solution below

SELECT count(distinct(customer_id)) FROM bookings
JOIN screenings ON bookings.screening_id = screenings.id
WHERE screenings.start_time BETWEEN '2023-04-01'
AND '2023-04-30 23:59:59.9999'