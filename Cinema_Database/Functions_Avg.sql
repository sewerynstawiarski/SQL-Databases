USE cinema_booking_system;

SELECT * FROM films;

SELECT avg(length_min) FROM films;

SELECT avg(length_min) FROM films WHERE LENGTH_MIN > 120;