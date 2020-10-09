-- CREATE TABLE Departments (
--     dept_no VARCHAR(20)   NOT NULL,
--     dept_name VARCHAR(20)   NOT NULL
-- );

-- SELECT *
-- FROM Departments
-- LIMIT 100;

-- CREATE TABLE Department_Employees (
--     emp_no INTEGER   NOT NULL,
--     dept_no VARCHAR(20)   NOT NULL
-- );

-- ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_dept_no FOREIGN KEY(dept_no)
-- REFERENCES Departments (dept_no);

-- SELECT *
-- FROM Department_Employees
-- LIMIT 100;

-- CREATE TABLE Department_Manager (
--     dept_no VARCHAR(20)   NOT NULL,
--     emp_no INTEGER   NOT NULL
-- );

-- ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_dept_no FOREIGN KEY(dept_no)
-- REFERENCES Departments (dept_no);

-- ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_emp_no FOREIGN KEY(emp_no)
-- REFERENCES Department_Employees (emp_no);

-- SELECT *
-- FROM Department_Manager
-- LIMIT 100;

-- CREATE TABLE Employees (
--     emp_no INTEGER   NOT NULL,
--     emp_title VARCHAR(5)   NOT NULL,
--     birth_date VARCHAR(10)   NOT NULL,
--     first_name VARCHAR(20)   NOT NULL,
--     last_name VARCHAR(20)   NOT NULL,
--     sex VARCHAR(2)   NOT NULL,
--     hire_date VARCHAR(20)  NOT NULL,
--     CONSTRAINT pk_Employees PRIMARY KEY (
--         emp_no
--      )
-- );

-- ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_no FOREIGN KEY(emp_no)
-- REFERENCES Department_Employees (dept_no);

-- ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title FOREIGN KEY(emp_title)
-- REFERENCES Titles (title_id);

-- SELECT *
-- FROM Employees
-- LIMIT 100;

-- CREATE TABLE Salaries (
--     emp_no INTEGER   NOT NULL,
--     salary INTEGER   NOT NULL
-- );

-- ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
-- REFERENCES Department_Employees (emp_no);

-- SELECT *
-- FROM Salaries
-- LIMIT 100;

-- CREATE TABLE Titles (
--     title_id VARCHAR(5)   NOT NULL,
--     title VARCHAR(20)   NOT NULL
-- );

-- SELECT *
-- FROM Titles
-- LIMIT 100;

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