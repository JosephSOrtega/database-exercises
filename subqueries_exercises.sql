use employees;

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date IN (
    select hire_date
    from employees
    where emp_no = 101010)
LIMIT 10;

select t.title, e.first_name
        from employees as e
                 join dept_emp as de on de.emp_no = e.emp_no
#          join dept_manager as dm on dm.emp_no = e.emp_no
                 join titles as t on t.emp_no = de.emp_no
        where first_name in (
            select first_name
            from employees
            where first_name = 'Aamod'
        );

