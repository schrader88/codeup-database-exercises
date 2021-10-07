USE employees;

SELECT COUNT(emp_no) FROM salaries;
SELECT COUNT(emp_no) FROM employees;

# JOIN or Inner JOIN, specifically Equijoin:

# SELECT employees.emp_no, CONCAT(first_name, ' ',last_name) AS 'Full Name', salary, from_date, to_date FROM employees
# JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT e.emp_no, CONCAT(first_name, ' ',last_name) AS 'Full Name', s.salary, s.from_date, s.to_date FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

# LEFT JOIN:
# LEFT JOIN shows rows in the left table that have no match in the right table.
# Example: 'users LEFT JOIN roles' - users is LEFT TABLE and roles is RIGHT TABLE

USE join_test_db;

SELECT * FROM roles;

# SELECT users.name, roles.name FROM roles JOIN users ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users LEFT JOIN roles ON roles.id = users.role_id;

# RIGHT JOIN:
# RIGHT JOIN shows rows in the right table that have no match in the left table.
# Example: 'users RIGHT JOIN roles' - users is LEFT TABLE and roles is RIGHT TABLE

SELECT users.name, roles.name FROM users RIGHT JOIN roles ON roles.id = users.role_id;