SELECT
  first_name,
  last_name
FROM employees
ORDER BY last_name ASC, first_name DESC;

SELECT
  hire_date,
  first_name
FROM employees
ORDER BY hire_date;


SELECT DISTINCT first_name
FROM employees;

SELECT first_name
FROM employees
GROUP BY first_name;

-- SQL 92
SELECT hire_date, first_name, last_name
FROM employees
GROUP BY hire_date, first_name, last_name ASC;

SELECT count(first_name), first_name
FROM employees
-- where should go here
GROUP BY first_name
ORDER BY count(first_name) desc
LIMIT 5
OFFSET 5;

