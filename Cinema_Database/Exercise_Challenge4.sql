#Which 5 customers made the most bookings?

USE cinema_booking_system;
DESCRIBE customers;
DESCRIBE bookings;

SELECT c.id, c.first_name, c.last_name, count(b.id) AS bookings FROM customers c
JOIN bookings b ON c.id = b.customer_id
GROUP BY c.id, c.first_name, c.last_name
ORDER BY bookings DESC
LIMIT 5;