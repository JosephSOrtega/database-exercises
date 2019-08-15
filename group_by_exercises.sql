use employees;

SELECT distinct title
from titles;

SELECT last_name
FROM employees
WHERE last_name like ('e%') and last_name like ('%e')
group by last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name like ('e%') and last_name like ('%e')
group by first_name, last_name;
