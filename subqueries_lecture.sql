USE employees;

SELECT emp_no FROM dept_manager;

SELECT birth_date, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    );