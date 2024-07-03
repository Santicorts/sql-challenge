--1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT
  e.emp_no,
  e.last_name,
  e.first_name,
  e.sex,
  s.salary
FROM
  "Employees" e
INNER JOIN
  "Salaries" s
ON
  e.emp_no = s.emp_no;


--2. List the first name, last name, and hire date for the employees who were hired in 1986.

Select 
	first_name,
	last_name,
	hire_date
FROM
 	"Employees"
WHERE 
	hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

select 
	dm.dept_no,
	d.dept_name, 
	e.last_name,
	e.first_name,
	e.emp_no as "Employee code"
from "Dept_manager" dm
inner join 
"Department" d
on 
dm.dept_no = d.dept_no

inner join
"Employees" e
on 
dm.emp_no = e.emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select 
	e.emp_no as "Employee code",
	e.last_name as "last name",
	e.first_name as "first name",
	de.dept_no as "department number",
	d.dept_name as "Department Name"
from "Employees" e
inner join
"Dept_emp" de
on 
e.emp_no = de.emp_no

inner join
"Department" d
on 
de.dept_no = d.dept_no;


--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select 
	first_name, 
	last_name,
	sex
from
	"Employees"
where first_name = 'Hercules' and last_name like 'B%';

--6.List each employee in the Sales department, including their employee number, last name, and first name.

select 
	e.emp_no as "Employee code",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Department Name"
from 
	"Employees" e
	
inner join
	"Dept_emp" de
on
	de.emp_no = e.emp_no
inner join 
	"Department" d
on
	de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select 
	e.emp_no as "Employee code",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Department Name"
from 
	"Employees" e
	
inner join
	"Dept_emp" de
on
	de.emp_no = e.emp_no
inner join 
	"Department" d
on
	de.dept_no = d.dept_no
where
 d.dept_name IN ('Sales', 'Development');


--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select 
	last_name as "Last Name",
count(*) as "Count"
from 
	"Employees"
group by 
	last_name
order by
	"Count" desc;



	




