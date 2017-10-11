use codeup_test_db;

SELECT *
FROM quotes;

UPDATE quotes
SET author_first_name = 'Samuel', author_last_name = 'Clemens'
WHERE id = 4;

SELECT *
FROM quotes;
