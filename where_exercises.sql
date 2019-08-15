use employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'm' and (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%e%');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('e%') or last_name like ('%e');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('e%') and last_name like ('%e');

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date like ('199%');

SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date like ('%12-25');

SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date like ('%12-25') and hire_date like ('199%');;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%q%');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name not like ('%qu%') and last_name like ('%q%');
