USE employees;

# Exercise One

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name;

# Exercise Two

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Exercise Three

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# Exercise Four

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no;

# Exercise Five

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;