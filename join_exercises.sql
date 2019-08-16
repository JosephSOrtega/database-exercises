# select u.name as 'user_name', r.name as 'role_name'
# from users AS u
#          join roles AS r ON u.role_id = r.id;
#
# select *
# from users as u
#          left join roles as r on u.role_id = r.id;
#
# select *
# from users u
#          right join roles r on r.id = u.role_id;
#
# select * from users;
# select * from roles;
#
# insert into users(role_id, email, name) values(2, 'email1', 'user1');
# insert into users(role_id, email, name) values(2, 'email2', 'user2');
# insert into users(role_id, email, name) values(2, 'email3', 'user3');
# insert into users(role_id, email, name) values(null, 'no-role@mail.com', 'no-role-user');
#
#
# select r.name, count(u.role_id) as total
# from roles r
#          left join users u on r.id = u.role_id
# group by r.name
# order by total desc;

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


SELECT distinct t.title as 'Title', count(t.title) as 'Count'
FROM titles as t
         JOIN dept_emp de on de.emp_no = t.emp_no
         join departments ap on de.dept_no = ap.dept_no
where ap.dept_name like 'Customer Service'
  and de.to_date > curdate()
  and t.to_date > now()
group by t.title asc;


select d.dept_name as 'Department Name',
    concat(e.first_name, ' ', e.last_name) as 'Department Manager',
    s.salary
from dept_manager dm
         join departments d on dm.dept_no = d.dept_no
         join employees e on dm.emp_no = e.emp_no
         join salaries s on e.emp_no = s.emp_no
where dm.to_date > curdate()
  and s.to_date > curdate()
order by d.dept_name;

# SELECT ap.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager', Max(s.salary) as 'Salary'
# FROM employees as e
#          JOIN dept_manager de on e.emp_no = de.emp_no
#          join salaries s on de.emp_no = s.emp_no
#          join departments ap on de.dept_no = ap.dept_no
# where (de.to_date > s.to_date) and de.to_date like '9999-%'
# group by ap.dept_name, concat(e.first_name, ' ', e.last_name) asc;


# select concat_ws(' ', e.first_name, e.last_name) as 'full_name', d.dept_name
# from employees e
#          join dept_emp de on e.emp_no = de.emp_no
#          join departments d on de.dept_no = d.dept_no
# where e.emp_no = 10001 and de.to_date = '999-01-01';


# SELECT concat(ee.first_name, ' ', ee.last_name) as 'Employee Name', ap.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Manager Name'
# FROM employees ee
#          JOIN dept_manager de on ee.emp_no = de.emp_no
#          join departments ap on de.dept_no = ap.dept_no
# join dept_emp dep on ee.emp_no = dep.emp_no
# join employees e on dep.emp_no = e.emp_no
# where de.to_date like '9999-%'
# group by concat(e.first_name, ' ', e.last_name), ap.dept_name, concat(ee.first_name, ' ', ee.last_name) asc;
#
