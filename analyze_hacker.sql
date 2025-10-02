SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

SELECT SUM(score)
FROM hacker_news;
-- total score of all the stories

SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200
ORDER BY score DESC;
--the individual users who have gotten combined scores of more than 200, and their combines scores.

SELECT (517.0 + 309.0 + 304.0 + 282.0 ) / 6366.0 AS 'Percentage' ;
-- add these users’ scores together and divide by the total to get the percentage.

SELECT user, COUNT(url) AS 'rickroll counter'
FROM hacker_news
GROUP BY user
HAVING url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
-- shows how many times each offending user posted this link

SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;
-- see which site gets the most views, Github, Medium, or NYT

SELECT timestamp
FROM hacker_news
LIMIT 10;
-- view the timestamp column

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;
-- uses strftime() function 

SELECT strftime('%H', timestamp), AVG(score), COUNT(*)
FROM hacker_news
GROUP BY 1;
-- hours of timestamp, average score, count of stories

SELECT strftime('%H', timestamp) AS 'Hour', 
  ROUND(AVG(score), 0) AS 'Average Score', 
  COUNT(*) AS 'Story Count'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1;
-- filtering and beautifying last query




  







