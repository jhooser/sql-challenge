-- Get the employee number, first and last name and salary
Select e.emp_no,e.first_name,e.last_name,s.salary
From "Employees" e
Inner join "Salaries" s
on e.emp_no = s.emp_no;

-- Get all employees who were hired in 1986
Select * From "Employees" e
where e.hire_date  Like '1986%' ;

