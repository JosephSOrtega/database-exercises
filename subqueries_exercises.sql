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

select first_name, last_name
from employees e
join dept_manager de on e.emp_no = de.emp_no
where first_name in (
    select first_name
    from employees
    )
and gender = 'f'
and de.to_date in (
    select to_date
    from dept_manager
    where de.to_date > curdate()
    );
# select first_name, last_name
# from dept_manager
# where emp_no in (
#     select emp_no
#     from dept_manager
# )
#   and gender = 'f'
#   and to_date in (
#     select to_date
#     from dept_manager
# );
