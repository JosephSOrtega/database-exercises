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


SELECT last_name, count(*)
FROM employees
WHERE last_name not like ('%qu%') and last_name like ('%q%')
group by last_name;

SELECT count(*), gender
FROM employees
WHERE first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
group by gender;
