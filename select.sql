USE codeup_test_db;

-- projection
SELECT 'Show all the quotes' AS title;
SELECT * -- wildcard, means all the columns
FROM quotes;

SELECT 'Show all the first names of all the authors' AS 'title';
SELECT author_first_name
FROM quotes;

SELECT 'Show all the quotes from Douglas' AS 'title';
SELECT content
FROM quotes
WHERE author_first_name = 'Douglas';

SELECT 'Show all the quotes with an id different from 3' AS 'title';
SELECT content
FROM quotes
WHERE id <> 3;

SELECT 'show all the quotes with ids between 2 and 4' AS 'title';
SELECT *
FROM quotes
WHERE id BETWEEN 2 AND 4;


SELECT 'show the full name of Douglas' AS 'title';
SELECT
  author_first_name,
  author_last_name
FROM quotes
WHERE author_first_name = 'douglas';

SELECT 'show that miscellaneous output is shown once for every row in a table' AS 'title';
SELECT
  'Hello'   AS 'Greeting',
  'Redwood' AS ''
FROM quotes;

SELECT
  concat(author_first_name, ' ', author_last_name) as author_full_name -- artificial column name
FROM quotes
WHERE author_first_name = 'douglas';
