use employees;

select concat(first_name, ' ', last_name) as full_name, birth_date as DOB
from employees
limit 10;
