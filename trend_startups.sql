SELECT *
FROM startups;
-- look at startups table

SELECT COUNT(*)
FROM startups;
--total number of companies in the table

SELECT SUM(valuation)
FROM startups;
-- the total value of all companies in this table

SELECT MAX(raised)
FROM startups;
--maximum amount of money raised

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';
--returns the maximum amount of money raise, during 'Seed' stage

SELECT MIN(founded)
FROM startups;
-- the year the oldest company on the list founded

SELECT AVG(valuation)
FROM startups;
--the average valuation

SELECT category, AVG(valuation)
FROM startups
GROUP BY category;
-- The average valuation, in each category.

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;
-- The average valuation, in each category. Round the averages to two decimal places.

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY 2 DESC;
-- The average valuation, in each category. Round the averages to two decimal places. Lastly, order the list from highest averages to lowest.

SELECT category, COUNT(*)
FROM startups
GROUP BY category;
-- the name of each category with the total number of companies that belong to it

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;
-- categories that have more than three companies in them

SELECT location , AVG(employees)
FROM startups
GROUP BY location;
-- average size of a startup in each location

SELECT location , AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
-- the avergae size of a startup in each loaction, with avergae sizes above 500



