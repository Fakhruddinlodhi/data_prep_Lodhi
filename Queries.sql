--testing
SELECT * FROM netflix_titles.csv;
SELECT * FROM read_csv('netflix_titles.csv');


--creating table
CREATE TABLE netflix_content AS
SELECT * FROM read_csv('netflix_titles.csv');


--testing
SELECT * FROM netflix_content;



--query1
SELECT  title, 
        director, 
        release_year 
FROM netflix_content 
WHERE country='Japan';



--query2
SELECT  type, 
        count(type) AS count
FROM netflix_content 
GROUP BY type;



--query3
SELECT  title, 
        release_year 
FROM netflix_content 
ORDER BY release_year ASC 
LIMIT 10;



--bonus query works
SELECT title, release_year
FROM 'netflix_titles.csv'
WHERE release_year > 2020
LIMIT 5;