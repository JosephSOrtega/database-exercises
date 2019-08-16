use employees;

SELECT ap.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM employees as e
         JOIN dept_manager de on e.emp_no = de.emp_no
         join departments ap on de.dept_no = ap.dept_no
where de.to_date like '9999-%'
group by ap.dept_name, concat(e.first_name, ' ', e.last_name) asc;


SELECT ap.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM employees as e
         JOIN dept_manager de on e.emp_no = de.emp_no
         join departments ap on de.dept_no = ap.dept_no
where de.to_date like '9999-%'
  and e.gender like 'f'
group by ap.dept_name, concat(e.first_name, ' ', e.last_name) asc;


SELECT distinct t.title as 'Title', count(*) as 'Count'
FROM employees as e
         JOIN dept_emp de on e.emp_no = de.emp_no
         join departments ap on de.dept_no = ap.dept_no
         join titles t on e.emp_no = t.emp_no
where ap.dept_name like 'Customer Service' and de.to_date like '9999-%'
group by t.title asc;



# select concat_ws(' ', e.first_name, e.last_name) as 'full_name', d.dept_name
# from employees e
#          join dept_emp de on e.emp_no = de.emp_no
#          join departments d on de.dept_no = d.dept_no
# where e.emp_no = 10001 and de.to_date = '999-01-01';
