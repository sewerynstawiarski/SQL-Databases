USE cinema_booking_system;

SELECT * FROM bookings;
SELECT * FROM reserved_seat;

# Exercise 1 - Select the customer ID and count the number of reserved seats, grouped by customer.
# Sort the result by customer ID.
SELECT b.customer_id, count(*) FROM reserved_seat
JOIN bookings b ON reserved_seat.booking_id = b.id
GROUP BY b.customer_id
ORDER BY b.customer_id;

SELECT b.customer_id, seat_id FROM reserved_seat
JOIN bookings b ON reserved_seat.booking_id = b.id
WHERE b.customer_id = 20;

# Exercise 2: Select the film name, and count the number of creenings, for each film that is overtwo hours long
# My solution:
SELECT * FROM films;
SELECT * FROM screenings;

SELECT f.name, f.length_min, count(*) FROM screenings
JOIN films f ON screenings.film_id = f.id
GROUP BY f.name, f.length_min
HAVING f.length_min > 120;

# Exercise 3: Modify the query from question 2, so that it only counts screenings for Jkanuary 2023
SELECT f.name, f.length_min, count(*) FROM screenings
JOIN films f ON screenings.film_id = f.id
WHERE year(screenings.start_time) = 2023
AND month(screenings.start_time) = 1
GROUP BY f.name
HAVING f.length_min > 120;

#Exercise 4: Find out how many seats each customer booked, for each screening.
# include the customer ID, the screening Id, and the number of seats fo each customer for that screening

SELECT * FROM bookings;
SELECT * FROM reserved_seat;

SELECT b.customer_id, b.screening_id, count(*) FROM reserved_seat r
JOIN bookings b ON r.booking_id = b.id
GROUP BY b.customer_id, b.screening_id
ORDER BY b.customer_id;

SELECT b.customer_id, b.screening_id, r.* FROM reserved_seat r
JOIN bookings b ON r.booking_id = b.id
WHERE b.customer_id = 1
AND b.screening_id =33;