USE cinema_booking_system;

SELECT date('2023-09-22 07:45:32');

SELECT start_time FROM screenings;

SELECT date(start_time) FROM screenings;

SELECT * FROM screenings
WHERE date(start_time) = '2023-07-08';

SELECT * FROM screenings
WHERE start_time = '2023-07-08'; -- only nulls

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-07-08' AND '2023-09-09';

SELECT * FROM screenings
WHERE start_time BETWEEN '2023-07-08' AND '2023-09-09'; -- wrong

------------------------------------------------------------------

SELECT month('2023-09-22 07:45:32');

SELECT start_time FROM screenings;

SELECT month(start_time) FROM screenings;

SELECT * FROM screenings
WHERE month(start_time) = 8;

 SELECT month(start_time) AS month, count(*) FROM screenings
 GROUP BY month;
 
 ----------------------------------------------------------------
 
 SELECT year('2023-09-22 07:45:32');
 
 SELECT start_time FROM screenings;
 
 SELECT year(start_time) FROM screenings;
 
 SELECT * FROM screenings
 WHERE year(start_time) ='2023';