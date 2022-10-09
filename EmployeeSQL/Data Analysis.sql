--Question 1 created as a view table
CREATE VIEW Question1 AS
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary
FROM employees
LEFT JOIN salary
ON salary.emp_no = employees.emp_no;
--View Question 1
SELECT *
FROM Question1;

--Question 2 created as a view table
CREATE VIEW Question2 AS
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE hire_date Like '%1986';
--View Question 2
SELECT *
FROM Question2;

--Question 3 created as a view table
CREATE VIEW Question3 AS
SELECT d.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
LEFT JOIN employees AS e
ON e.emp_no = dm.emp_no;
--View Question 3
SELECT *
FROM Question3

--Question 4 created as view table
CREATE VIEW Question4 AS
SELECT de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp AS de
LEFT JOIN employees AS e
ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
ON d.dept_no = de.dept_no;
--View Question 4
SELECT *
FROM Question4

--Question 5 created as a view table
CREATE VIEW Question5 AS
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name LIKE 'Hercules'
AND e.last_name LIKE 'B%';
--View Question 5
SELECT *
FROM Question5;

--Create view table for question 6
CREATE VIEW Question6 AS
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
LEFT JOIN employees AS e
ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Sales';
--View Question 6
SELECT *
FROM Question6;

--Create view table for question 7
CREATE VIEW Question7 AS
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
LEFT JOIN employees AS e
ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Sales'
OR d.dept_name LIKE 'Development';
--View question 7
SELECT *
FROM Question7;

--Create view for question 8
CREATE VIEW Question8 AS
SELECT last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
--View question 8
SELECT *
FROM Question8;