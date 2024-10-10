-- DISTINCT to remove duplicates

-- names only occurs once
SELECT DISTINCT first_name FROM public.actor;


SELECT * FROM public.film;
-- Seeing all the ratings in the column
SELECT DISTINCT rating FROM public.film;

-- disctinctly show difference in rental duration.
SELECT DISTINCT rating, rental_duration FROM public.film;

-- Task: Get the prices of payments from high to low.
SELECT DISTINCT amount FROM public.payment ORDER BY amount DESC;

-- Without Distinct
-- Using limit to limit the amount of rows in the results

-- it is also a good idea to use the "LIMIT" when getting an idea of a table in case 
-- the table is large and can take time to resolve.

SELECT DISTINCT amount FROM public.payment ORDER BY amount DESC LIMIT 5;

SELECT address FROM public.address ORDER BY address LIMIT 5;

SELECT amount FROM public.payment ORDER BY amount DESC;
