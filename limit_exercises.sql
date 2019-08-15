use employees;

select DISTINCT last_name
from employees
order by last_name desc
limit 10;