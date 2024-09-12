SELECT employees.emp_no,employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees 
WHERE hire_date >= '01/01/1986'
AND hire_date <= '12/31/1986';

SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager ON 
dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no

SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees 
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no 
INNER JOIN departments ON 
dept_emp.dept_no = departments.dept_no 
WHERE dept_name = 'Sales'

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees 
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no 
INNER JOIN departments ON 
dept_emp.dept_no = departments.dept_no 
WHERE dept_name = 'Sales'
OR dept_name = 'Development'


SELECT last_name, COUNT(last_name) AS "last_name_counts"
FROM employees
GROUP BY last_name
ORDER BY "last_name_counts" DESC;