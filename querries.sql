SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

SELECT 
    de.dept_no,               -- Department number
    e.emp_no,                 -- Employee number
    e.last_name,              -- Employee's last name
    e.first_name,             -- Employee's first name
    d.dept_name               -- Department name
FROM 
    dept_emp de               -- Joining dept_emp table
JOIN 
    employees e ON de.emp_no = e.emp_no   -- Join with employees on employee number
JOIN 
    departments d ON de.dept_no = d.dept_no  -- Join with departments on department number
;


SELECT 
    first_name,    -- Employee's first name
    last_name,     -- Employee's last name
    sex            -- Employee's sex
FROM 
    employees      -- From the employees table
WHERE 
    first_name = 'Hercules' AND   -- Filtering for first name 'Hercules'
    last_name LIKE 'B%';          -- and last names starting with 'B'
	
SELECT 
    e.emp_no,              -- Employee number
    e.last_name,           -- Employee's last name
    e.first_name,          -- Employee's first name
    d.dept_name            -- Department name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'; -- Filter to include only 'Sales' department

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
