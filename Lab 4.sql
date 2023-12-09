use sakila;

-- Film ratings
SELECT DISTINCT rating
FROM film;

-- Get release dates
SELECT DISTINCT release_year
FROM film;

-- Get the films with armageddon in it
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- Get films with APOLLO in it
SELECT *
FROM film
WHERE title LIKE '%APOLLO%';

-- Films with the ending APOLLO
SELECT *
FROM film
WHERE title LIKE '%APOLLO';

-- Films with DATE in the title
SELECT *
FROM film
WHERE title LIKE '%DATE%';

-- Top 10 longest title
SELECT title, LENGTH(title) AS title_length
FROM film
ORDER BY title_length DESC
LIMIT 10;

-- 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Behind the scenes content
SELECT COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

-- Ordered by release and alphabetical order
SELECT *
FROM film
ORDER BY release_year, title;




