-- Create Additional Lists
SELECT * FROM salaries
ORDER BY to_date DESC;

-- Above code does not pull correclty
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT e.emp_no,
    e.first_name,
e.last_name,
    e.gender,
    s.salary,
    de.to_date
--Create a new table	
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
-- Add a third join
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
--Put filters into place
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	 --Add filter
	 AND (de.to_date = '9999-01-01');

--- TAILORED LISTS---
-- Sales team info
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	di.dept_name
FROM retirement_info as ri
	LEFT JOIN dept_info as di
	ON (ri.emp_no = di.emp_no)	
WHERE di.dept_name = 'Sales';

-- Sales and Development teams information
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	di.dept_name
INTO sales_info
FROM retirement_info as ri
	LEFT JOIN dept_info as di
	ON (ri.emp_no = di.emp_no)	
WHERE di.dept_name IN ('Sales', 'Development');
