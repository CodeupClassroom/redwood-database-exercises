# A concatenation example in MySQL
SELECT concat(e.first_name, ' ', e.last_name) AS 'full_name'
from employees AS e;

# Gets the current date and time
select now();

# Gets the current time
select current_time();

# Gets the current date
select current_date();

# Gets the number of seconds since January 1st, 1970 until today.
select unix_timestamp();

# Get the number of hours between that date and today.
SELECT CONCAT(
    'Teaching people to code for ',
    (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2017-10-12')) / 3600,
    ' hrs'
);

# Just a small practical example of functions
# This is not part of the lecture and you shouldn't do this, it duplicates lots of data!!!
select e.emp_no, concat(e.first_name, ' ', e.last_name) as 'full_name',t.emp_no, t.title, t.from_date, t.to_date
from employees e
where e.emp_no = t.emp_no;