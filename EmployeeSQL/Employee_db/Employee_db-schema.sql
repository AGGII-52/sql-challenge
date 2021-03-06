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
