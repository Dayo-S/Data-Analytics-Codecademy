SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;
-- view of all the tables

SELECT *
FROM riders
CROSS JOIN cars; 
-- cross join between riders and cars

SELECT trips.date, 
   trips.pickup, 
   trips.dropoff, 
   trips.type, 
   trips.cost,
   riders.first, 
   riders.last,
   riders.username
FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;
  -- left join between trips and riders

SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;
-- inner join between trips and cars

SELECT *
FROM riders
UNION
SELECT *
FROM riders2;
-- riders table stacked on riders2

SELECT AVG(cost)
FROM trips;
-- avg cost for trip

SELECT first, last, username
FROM riders
WHERE total_trips < 500;
-- all the riders who have used Lyft less than 500 times

SELECT COUNT(*)
FROM cars
WHERE status = 'active';
-- calculate the number of cars that are active

SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
-- finds two cars that have the highest trips_completed

