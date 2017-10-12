USE employees;

SELECT
  first_name,
  last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;


SELECT
  first_name,
  last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT
  gender,
  first_name,
  last_name
FROM employees
WHERE (first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya')
         AND gender = 'M';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT
  hire_date,
  first_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT
  hire_date,
  first_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT
  hire_date,
  first_name
FROM employees
WHERE hire_date LIKE '199%';

SELECT
  birth_date,
  first_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%';
