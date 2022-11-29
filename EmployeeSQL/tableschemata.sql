Create Table departments(
dept_no varchar Primary key, 
	dept_name varchar(30) not null
);

----------------------------------------

Create Table employees(
emp_no int Primary Key,
	emp_title varchar, 
	birth_date date, 
	first_name varchar (30)not null, 
	last_name varchar (30)not null, 
	sex varchar, 
	hire_date date
);

----------------------------------------------

Create Table dept_emp(
emp_no int not null, 
	dept_no varchar not null, 
	foreign key (emp_no) references employees (emp_no), 
	foreign key (dept_no) references departments (dept_no),
	Primary Key (emp_no, dept_no)
);

--------------------------------------------------

Create Table dept_manager (
dept_no varchar, 
	emp_no int Not null, 
	foreign key (dept_no) references departments (dept_no), 
	foreign key (emp_no) references employees (emp_no), 
	Primary key (dept_no, emp_no)
);

--------------------------------------------------------

Create Table salaries (
emp_no int Primary key, 
	salary decimal not null, 
	foreign key (emp_no) references employees (emp_no), 
);

-----------------------------------------------------------

Create Table titles (
title_id varchar Primary key
	title varchar not null
);