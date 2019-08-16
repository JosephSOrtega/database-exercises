use employees;

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date IN (
    select hire_date
    from employees
    where emp_no = 101010)
LIMIT 10;

