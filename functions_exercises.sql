USE employees;

# Exercise One

SELECT CONCAT(first_name, ' ' , last_name) FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no;

# Exercise Two

SELECT first_name, last_name, birth_date FROM employees
WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12;

# Exercise Three

SELECT first_name, last_name, birth_date, hire_date FROM employees
WHERE (YEAR(hire_date) BETWEEN 1990 AND 1999)
  AND (DAY(birth_date) = 25)
  AND (MONTH(birth_date) = 12);

# Exercise Four

SELECT first_name, last_name, birth_date, hire_date FROM employees
WHERE (YEAR(hire_date) BETWEEN 1990 AND 1999)
  AND (DAY(birth_date) = 25)
  AND (MONTH(birth_date) = 12)
ORDER BY birth_date, hire_date DESC;

# Exercise Five

SELECT first_name, last_name, birth_date, hire_date, DATEDIFF(CURDATE(), hire_date) FROM employees
WHERE (YEAR(hire_date) BETWEEN 1990 AND 1999)
  AND (DAY(birth_date) = 25)
  AND (MONTH(birth_date) = 12)
ORDER BY birth_date, hire_date DESC;