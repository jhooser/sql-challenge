-- Get the employee number, first and last name and salary
Select e.emp_no,e.first_name,e.last_name,e.gender,s.salary
From "Employees" e
Inner join "Salaries" s
on e.emp_no = s.emp_no;

-- Get all employees who were hired in 1986
Select * From "Employees" e
where e.hire_date  Like '1986%' ;

-- Get Managers and their personal data
Select m.dept_no,d."Name", m.emp_no,e.last_name,e.first_name,m.from_date,m.to_date
From "Dept_Manager" m
INNER JOIN "Employees" e
on m.emp_no = e.emp_no 
LEFT JOIN "Departments" d
on m.dept_no = d.dept_no;

-- Get all employees and their departments
Select e.emp_no,e.last_name,e.first_name,d."Name" As "Department"
From "Employees" e
INNER JOIN "Dept_Emp" t 
on e.emp_no = t.emp_no 
LEFT JOIN "Departments" d
on t.dept_no = d.dept_no;

-- Get all employees with the first name Hercules and last name starts with B
Select * From "Employees" e
where e.first_name = 'Hercules' AND
e.last_name LIKE 'B%';

-- Get all the sales employees
Select e.emp_no,e.last_name,e.first_name,d."Name" As "Department"
From "Employees" e
INNER JOIN "Dept_Emp" t 
on e.emp_no = t.emp_no 
LEFT JOIN "Departments" d
on t.dept_no = d.dept_no
Where d."Name" = 'Sales';

-- Get all Sales and Development Employees
Select e.emp_no,e.last_name,e.first_name,d."Name" As "Department"
From "Employees" e
INNER JOIN "Dept_Emp" t 
on e.emp_no = t.emp_no 
LEFT JOIN "Departments" d
on t.dept_no = d.dept_no
Where d."Name" = 'Sales' or 
d."Name" = 'Development';

-- Value counts of employee last name counts
select last_name, count(last_name)
from "Employees"
Group By last_name
Order by last_name DESC;