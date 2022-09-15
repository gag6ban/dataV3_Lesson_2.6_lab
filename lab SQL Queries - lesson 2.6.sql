-- Lesson 2.6
-- Q1: In the table actor, which are the actors whose last names are not repeated?
SELECT DISTINCT(last_name) FROM sakila.actor;

-- Q2: Which last names appear more than once?
SELECT DISTINCT last_name, COUNT(*) FROM sakila.actor
GROUP BY last_name;

-- Q3: Using the rental table, find out how many rentals were processed by each employee.
SELECT DISTINCT staff_id, COUNT(*) FROM sakila.rental
GROUP BY staff_id;

-- Q4: Using the film table, find out how many films were released each year.
SELECT DISTINCT release_year, COUNT(*) FROM sakila.film
GROUP BY release_year;

-- Q5: Using the film table, find out for each rating how many films were there.
SELECT DISTINCT rating, COUNT(*) FROM sakila.film
GROUP BY rating;

-- Q6: What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT DISTINCT rating, round(AVG(length),2) AS avg
FROM sakila.film
GROUP BY rating;

-- Q7: Which kind of movies (rating) have a mean duration of more than two hours? (i assumed that length are given in minutes)
SELECT DISTINCT rating, COUNT(*), AVG(length)/60 as avg
FROM sakila.film
GROUP BY rating
HAVING avg > 2;

-- Q8: Rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.
-- SELECT * FROM sakila.film;
-- SELECT title, ISNULL(length) FROM sakila.film;
SELECT DISTINCT length FROM sakila.film
 
