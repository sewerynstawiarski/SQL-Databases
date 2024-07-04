USE cinema_booking_system;


# How many of our customers have made a booking?

DESCRIBE customers;
SELECT * FROM customers;
DESCRIBE bookings;
SELECT * FROM bookings;

SELECT count(*) AS customers_who_made_booking FROM 
(SELECT DISTINCT b.customer_id FROM bookings b) customers_who_made_booiking;

SELECT count(*) FROM customers;

SELECT DISTINCT b.customer_id FROM bookings b;

#Official approach
SELECT count(distinct(customer_id)) AS no_of_customers FROM bookings;