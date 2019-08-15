use employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('e%');

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date like ('199%');

SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date like ('%12-25');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%q%');
