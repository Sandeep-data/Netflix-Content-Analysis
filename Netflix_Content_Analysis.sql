
CREATE DATABASE IF NOT EXISTS Netflix_Project;
USE Netflix_Project;
SELECT COUNT(*) FROM netflix_titles;
select * from netflix_titles;
-- limit 10
SELECT *
FROM netflix_titles
LIMIT 10;
DESCRIBE netflix_titles;
-- Total Movies
SELECT COUNT(*)
FROM netflix_titles
WHERE type='Movie';
-- Total TV Shows
SELECT COUNT(*)
FROM netflix_titles
WHERE type='TV Show';
-- Latest Movies
SELECT title,release_year
FROM netflix_titles
ORDER BY release_year DESC
LIMIT 10;
-- Oldest Movies
SELECT title,release_year
FROM netflix_titles
ORDER BY release_year
LIMIT 10;
-- Top Ratings
SELECT rating,COUNT(*) Total
FROM netflix_titles
GROUP BY rating
ORDER BY Total DESC;
-- Top Countries
SELECT country,COUNT(*) Total
FROM netflix_titles
GROUP BY country
ORDER BY Total DESC
LIMIT 10;
-- Movies after 2020
SELECT title,release_year
FROM netflix_titles
WHERE release_year>=2020;
-- Rajiv Chilaka How Much Movies
SELECT title,director
FROM netflix_titles
WHERE director='Rajiv Chilaka';