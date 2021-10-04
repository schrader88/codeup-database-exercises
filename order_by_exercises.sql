USE employees;

# Exercise One

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# Exercise Two

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Exercise Two, Part One

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%';

# Exercise Three, Part One

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%q%';

# Exercise One, Part Two

SELECT first_name, last_name FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Exercise Two, Part Two

SELECT first_name, last_name, gender FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

# Exercise Three, Part Two

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# Exercise Four, Part Two

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Exercise Five, Part Two

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE'%qu%';