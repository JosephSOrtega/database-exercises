use employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'm' and (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%e%')
order by emp_no DESC;

# exercise
SELECT concat(first_name, ' ', last_name)
As 'full_name'
FROM employees
WHERE last_name like ('%e')
And last_name like ('e%')
order by emp_no DESC;
#

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
WHERE birth_date like ('%12-25') and hire_date like ('199%')
order by birth_date Asc, hire_date desc;

#
SELECT *, datediff(curdate(), hire_date)
FROM employees
WHERE birth_date like ('%12-25') and hire_date like ('199%')
order by birth_date Asc, hire_date desc;
#


SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%q%');



SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name not like ('%qu%') and last_name like ('%q%');

