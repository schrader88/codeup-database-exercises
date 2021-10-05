# Exercise One

SELECT DISTINCT title FROM titles;

# Exercise Two

SELECT last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name
ORDER BY last_name;

# Exercise Three

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY first_name, last_name;

# Exercise Four

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# Exercise Five

SELECT DISTINCT CONCAT(COUNT(*), ' ', last_name) FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Exercise Six

SELECT CONCAT(COUNT(*), ' ',gender) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;