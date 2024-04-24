USE cinema_booking_system;
# 1: Select the film name and length, for all films with a length greater than the average film length
SELECT f.name, f.length_min FROM films f
WHERE f.length_min > (SELECT avg(length_min) FROM films);

SELECT avg(length_min) FROM films;

# 2: Select the maximum and minimum number of screenings, for our films.

SELECT max(no_screenings), min(no_screenings) FROM 
(SELECT films.name, count(*) AS no_screenings FROM screenings
JOIN films ON screenings.film_id = films.id
WHERE screenings.film_id = films.id
GROUP BY films.name) number_of_screenings;

SELECT films.name, count(*) AS no_screenings FROM screenings
JOIN films ON screenings.film_id = films.id
WHERE screenings.film_id = films.id
GROUP BY films.name;

# Official solution for 2:
SELECT max(no_screenings), min(no_screenings) FROM
(SELECT film_id, count(*) AS no_screenings FROM screenings
GROUP BY film_id) b;

# 3: Select each film, and the number of screenings for that film

SELECT films.name, count(*) AS no_screenings FROM screenings
JOIN films ON screenings.film_id = films.id
WHERE screenings.film_id = films.id
GROUP BY films.name;

#Official solution for 3:
SELECT name, 
(SELECT count(*) FROM screenings WHERE film_id = films.id)
FROM films;

SELECT f.name, count(*) FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY name;