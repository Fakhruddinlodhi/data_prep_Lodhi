--testing
select * from netflix_titles.csv;
select * from read_csv('netflix_titles.csv');

--creating table
CREATE TABLE netflix_content AS
SELECT * FROM read_csv('netflix_titles.csv');

--testing
select * from netflix_content;

--query1
select title, director, release_year from netflix_content where country='Japan';

--query2
select type, count(type) from netflix_content group by type;

--query3
select title, release_year from netflix_content order by release_year asc limit 10;

--bonus query works
SELECT title, release_year
FROM 'netflix_titles.csv'
WHERE release_year > 2020
LIMIT 5;