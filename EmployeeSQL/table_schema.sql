CREATE TABLE Titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL);
	
CREATE TABLE Employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL);
	
CREATE TABLE Departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL);
	
CREATE TABLE Dept_Manager (
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	emp_no INTEGER NOT NULL);
	
CREATE TABLE Dept_Emp (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR NOT NULL);
	
CREATE TABLE Salaries (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	salary INTEGER NOT NULL);