-- Drop tables at the start, in case tables already exist.
DROP TABLE salary;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE departments;
DROP TABLE employees;
DROP TABLE titles;

--Create departments first as it's primary key is used later
CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30)
);
--Create titles as its primary key is used later
CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);
--Create employees as it needs titles and its emp_no primary key is used in the following tables
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(30),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date VARCHAR(30)
);
--Create all tables that need dependencies
CREATE TABLE salary(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT
);
CREATE TABLE dept_emp(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
