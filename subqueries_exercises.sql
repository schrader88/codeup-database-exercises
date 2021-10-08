USE employees;

# Exercise One

SELECT CONCAT(first_name, ' ', last_name), hire_date
FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010);

# Exercise Two

SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# Exercise Three

SELECT first_name, last_name
FROM employees
WHERE gender = 'F' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date > NOW());





# BONUS

SELECT dept_name
FROM departments
WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE to_date > NOW() AND emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F'));


# Extra Bonuses

-- what is the most common birthday in the company? least common?

-- what is the average salary of managers by department?

-- how many employees currently work in each department?

-- what is the average salary for each department?

-- what was the average salary in the 80s? By department?