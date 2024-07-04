USE cinema_booking_system;

# In the Chaplin room, which film was shown most often?

DESCRIBE rooms;
DESCRIBE screenings;
DESCRIBE films;

SELECT r.name, f.name, count(s.id) AS number_of_screenings FROM rooms r
JOIN screenings s ON r.id = s.room_id
JOIN films f ON f.id = s.film_id
WHERE r.name = 'Chaplin'
GROUP BY r.name, f.name
ORDER BY number_of_screenings DESC
LIMIT 1;

#Alternative official solution

SELECT f.name, count(*) AS no_screenings FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN rooms r ON r.id = s.room_id
WHERE r.name = 'Chaplin'
GROUP BY f.name
HAVING no_screenings =
(SELECT max(screenings_count) FROM
(SELECT count(*) AS screenings_count FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN rooms r ON r.id = s.room_id
WHERE r.name = 'Chaplin'
GROUP BY f.name) as rc);