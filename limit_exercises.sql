# USE employees;

# Exercise One

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

# Exercise Two

SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5;

# Exercise Three

SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;