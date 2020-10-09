-- -- List the following details of each employee: employee number, last name, first name, sex, and salary.
-- SELECT employees.emp_no, last_name, first_name, sex, salary
-- FROM employees
-- JOIN salaries ON salaries.emp_no = employees.emp_no;

-- -- List first name, last name, and hire date for employees who were hired in 1986.
-- SELECT last_name, first_name, hire_date
-- FROM Employees
-- WHERE hire_date like '%%/%%/1986';

-- -- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- SELECT Departments.dept_no, Departments.dept_name, Department_Manager.emp_no, Employees.last_name, Employees.first_name
-- FROM Departments
-- JOIN Department_Manager ON Departments.dept_no = Department_Manager.dept_no
-- JOIN Employees ON Department_Manager.emp_no = Employees.emp_no;

-- -- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- SELECT Department_Employees.emp_no, Departments.dept_name, Employees.last_name, Employees.first_name
-- FROM Department_Employees
-- JOIN Employees ON Department_Employees.emp_no = Employees.emp_no
-- Join Departments ON Department_Employees.dept_no = Departments.dept_no;

-- -- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- SELECT first_name, last_name, sex
-- FROM Employees
-- WHERE first_name = 'Hercules'
-- AND last_name LIKE 'B%';

-- -- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- SELECT Department_Employees.emp_no, Departments.dept_name, Employees.last_name, Employees.first_name
-- From Department_Employees
-- JOIN Employees ON Department_Employees.emp_no = Employees.emp_no
-- JOIN Departments ON Department_Employees.dept_no = Departments.dept_no
-- WHERE Departments.dept_name = 'Sales';

-- -- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- SELECT Department_Employees.emp_no, Departments.dept_name, Employees.last_name, Employees.first_name
-- From Department_Employees
-- JOIN Employees ON Department_Employees.emp_no = Employees.emp_no
-- JOIN Departments ON Department_Employees.dept_no = Departments.dept_no
-- WHERE Departments.dept_name = 'Sales'
-- OR Departments.dept_name = 'Development';

-- -- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- SELECT last_name,
-- COUNT (last_name) AS "frequency_count"
-- FROM Employees
-- GROUP BY last_name
-- ORDER BY
-- COUNT (last_name) DESC;