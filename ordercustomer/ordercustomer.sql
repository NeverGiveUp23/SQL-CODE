SELECT first_name, last_name , email FROM public.customer;

-- order the names by the first names.
SELECT first_name, last_name FROM public.customer ORDER BY first_name;

-- order the names in DESC order.
SELECT first_name, last_name FROM public.customer ORDER BY first_name DESC;

-- order the names in ASC order. Default view but helps with readability.
SELECT first_name, last_name FROM public.customer ORDER BY first_name ASC;

-- selecting first names in desc order while the last names will be in asc order occording to the first names.
SELECT first_name, last_name FROM public.customer ORDER BY first_name DESC, last_name;


SELECT * FROM public.payment;

-- I wanted to view the payments by customer_id and the payment amount from highest to lowest based on each id.
SELECT * FROM public.payment ORDER BY customer_id, amount DESC;

-- Ordering customer list in desc order and using the column numbers as a replacement. Not sure if this would be readable for others looking in. but
-- is a quick way to display data.
SELECT * FROM public.customer ORDER BY last_name DESC, first_name DESC;

SELECT first_name, last_name, email FROM public.customer ORDER BY 2 DESC, 1 DESC;

