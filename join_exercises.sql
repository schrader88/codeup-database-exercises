# [COMMENTED OUT] Code below was to create the join_test_db:

# CREATE DATABASE join_test_db;
#
# USE join_test_db;
#
# CREATE TABLE roles (
#    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    email VARCHAR(100) NOT NULL,
#    role_id INT UNSIGNED DEFAULT NULL,
#    PRIMARY KEY (id),
#    FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#      ('bob', 'bob@example.com', 1),
#      ('joe', 'joe@example.com', 2),
#      ('sally', 'sally@example.com', 3),
#      ('adam', 'adam@example.com', 3),
#      ('jane', 'jane@example.com', null),
#      ('mike', 'mike@example.com', null);


# Join Example Database

USE join_test_db;

INSERT INTO users (name, email, role_id) VALUES
    ('kyle', 'kyle@example.com', 2),
    ('joe', 'joe@example.com', 2),
    ('jenna', 'jenna@example.com', 2),
    ('rick', 'rick@example.com', null);

SELECT users.id, users.name, roles.name FROM users JOIN roles ON users.role_id = roles.id;

SELECT users.id, users.name, roles.name FROM users LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.id, users.name, roles.name FROM users RIGHT JOIN roles ON users.role_id = roles.id;

SELECT COUNT(*), roles.name FROM users
LEFT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;

######################################################

USE employees;

# Exercise One

SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Exercise Two

SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

# Exercise Three

SELECT title, COUNT(*) AS Total FROM titles t
JOIN dept_emp de ON de.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01' AND dept_no = 'd009'
GROUP BY title;

# Exercise Four

SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', s.salary
FROM employees e
JOIN dept_manager de ON de.emp_no = e.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus - ASK FOR HELP!!!!!

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
# FROM employees e, employees e2
# JOIN dept_emp de ON de.emp_no = e.emp_no
# JOIN departments d ON d.dept_no = de.dept_no
# JOIN dept_manager dm ON dm.emp_no = e2.emp_no
# WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
# GROUP BY CONCAT(e.first_name, ' ', e.last_name), d.dept_name, CONCAT(e2.first_name, ' ', e2.last_name);

# Paris' Bonus Solution

SELECT CONCAT(first_name,' ',last_name), current_managers.dept_name, current_managers.manager_name FROM employees
JOIN dept_emp de on employees.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN (
    SELECT CONCAT(first_name,' ',last_name) AS manager_name, dept_name
    FROM employees AS e
             JOIN dept_manager dm on e.emp_no = dm.emp_no
             JOIN departments AS d ON dm.dept_no = d.dept_no
             WHERE dm.to_date > NOW()
) AS current_managers ON current_managers.dept_name = d.dept_name
WHERE de.to_date > NOW();

# Extra Bonuses

# What is the name of everyone who has worked or is working as an ‘Assistant Engineer’?

SELECT CONCAT(first_name, ' ', last_name) AS Name, t.title AS Title
FROM employees e
JOIN titles t on e.emp_no = t.emp_no
WHERE t.title = 'Assistant Engineer';


# What are the DOBs of all current senior engineers?

SELECT CONCAT(first_name, ' ', last_name) AS Name, t.title AS Title, birth_date AS DOB, t.to_date
FROM employees e
JOIN titles t on e.emp_no = t.emp_no
WHERE t.title = 'Senior Engineer' AND t.to_date > NOW();

# What is the most common title in the ‘Marketing’ department?

SELECT title AS Title, COUNT(*) AS '# of Employees', d.dept_name AS Department
FROM titles t
JOIN dept_emp de ON t.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE de.dept_no = 'd001'
GROUP BY title;

# What is the most common birthday in the company? least common?

SELECT birth_date AS DOB, COUNT(*) AS '# of Employees'
FROM employees
GROUP BY birth_date
ORDER BY 2 DESC;

# How many male and female employees currently work in the ‘Finance’ department?



# What is the average current salary for each department?
# What was the average salary in the 80s (a salary that started and ended in the 80s)? By department?
# What are the names of all ‘Staff’ employees in the ‘Research’ department?
# What is name of the lowest paid ‘Staff’ members in the ‘Research’ department (make sure the salary and employment in the department is current).
