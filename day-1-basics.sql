--Day 1: Revision of SELECT, FROM, WHERE, ORDER BY, GROUP BY, HAVING, LIMIT --

-- Retrive all customer data --
 SELECT
 first_name,
 score,
 country
 FROM customers;
-- retrieve from customers score not equal to 0 --
SELECT *
FROM customers
WHERE score!= 0
-- retrieve cutomers from Germany --
SELECT
first_name,
country
FROM customers
WHERE country = 'Germany'
-- retrieve all customers and sort by highest score first --
SELECT *
FROM customers
ORDER BY score DESC
-- retrieve all customers and sort by lowest score first --
SELECT *
FROM customers
ORDER BY score ASC
-- retrieve all customers and sort them by the country and then by the highest score --
SELECT *
FROM customers
ORDER BY country ASC, score DESC
-- find the total score for each country --
SELECT
country,
SUM(score) AS total_score
FROM customers
GROUP BY country
-- find the total score ad total number of customers for each country --
SELECT
country,
SUM(score) AS total_score,
COUNT(id) AS total_customers
FROM customers
GROUP BY country
-- find the average score for each country considering only customers with a score not equal to zero and return only those countries with an average score more than 430 --
SELECT
country,
AVG (score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
-- return unique list of all countries --
SELECT DISTINCT country
FROM customers
-- retirive only 3 customers --
SELECT *
FROM customers
LIMIT 3
-- retrive the top 3 customers with the highest scores --
SELECT*
FROM customers
ORDER BY score desc
LIMIT 3
-- retrieve lowest 2 customers based on the score --
SELECT *
FROM customers
ORDER BY score asc
LIMIT 2
