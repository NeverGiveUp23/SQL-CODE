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
SELECT amount FROM public.payment ORDER BY amount DESC;
