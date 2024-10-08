-- IF YOU WANT TO GET THE TOTAL COUNT OF A COLUMN IN A TABLE;
SELECT COUNT(first_name) FROM public.actor;

-- Get the unique count of a column in a table.
SELECT COUNT(DISTINCT first_name) FROM public.actor;
