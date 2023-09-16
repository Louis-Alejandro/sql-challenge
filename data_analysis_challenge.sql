select employees.emp_no, employees.last_name, 
employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on employees.emp_no = salaries.emp_no;

select employees.first_name, employees.last_name, 
employees.hire_date
from employees
where extract(year from employees.hire_date) = 1986;

select dept_manager.dept_no, dept_manager.emp_no,
employees.last_name, employees.first_name, departments.dept_name
from dept_manager
inner join employees on dept_manager.emp_no = employees.emp_no 
inner join departments on dept_manager.dept_no = departments.dept_no;

select employees.first_name, employees.last_name, employees.sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

SELECT employees.emp_no,
employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

select employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name in ('Sales', 'Development');

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;




