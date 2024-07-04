USE cinema_booking_system;

SELECT * FROM screenings;

SELECT film_id, start_time FROM screenings
WHERE date(start_time) = '2022-06-18';

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-03-06' AND '2023-03-13';

SELECT * FROM screenings
WHERE year(start_time) = '2022'
AND month(start_time) = '10';