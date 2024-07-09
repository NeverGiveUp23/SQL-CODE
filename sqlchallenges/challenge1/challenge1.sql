-- create a list of all the DISTINCT districts customers are from.
SELECT DISTINCT district FROM address ORDER BY district ASC;

-- What is the latest rental date?
SELECT DISTINCT rental_date from rental ORDER BY rental_date DESC LIMIT 1;

-- How many films does the company have?
SELECT COUNT(title) from film; -- using distinct to get rid of duplicates
	
-- How many distinct last names of the customers are there?
SELECT COUNT(DISTINCT last_name) FROM customer;
