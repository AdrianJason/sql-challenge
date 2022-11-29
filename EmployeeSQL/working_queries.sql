select * 
from employees; 

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e 
left join salaries as s on e.emp_no = s.emp_no;


select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01'
and hire_date < '1987-01-01';

select
dm.dept_no, 
d.dept_name, 
dm.emp_no,
e.last_name,
e.first_name
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on e.emp_no = dm.emp_no;

select 
de.dept_no, 
de.emp_no, 
e.last_name, 
e.first_name, 
d.dept_name
from dept_emp as de
join employees as e
on de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no;

select 
first_name, 
last_name, 
sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

select de.emp_no, e.last_name, e.first_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
where dept_no = 'd007';

select
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
from dept_emp as de
join employees as e
on de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no
where dept_name = 'Sales';

SELECT 
last_name,
COUNT(last_name)
FROM employees
GROUP BY  last_name
ORDER BY COUNT(last_name);