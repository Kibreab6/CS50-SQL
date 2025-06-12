/*
In 4.sql, write a SQL query to find the first and last names of players who were not born in the United States. Sort the results alphabetically
by first name, then by last name.
*/
SELECT COUNT(*)
FROM "views"
WHERE "artist" = 'Hiroshige'
AND "english_title" LIKE '%Eastern Capital%';
