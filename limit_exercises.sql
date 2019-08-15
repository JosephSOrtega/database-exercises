use employees;

select DISTINCT last_name
from employees
order by last_name desc
limit 10;

SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date like ('%12-25') and hire_date like ('199%')
order by birth_date Asc, hire_date desc
limit 5 offset 45;
