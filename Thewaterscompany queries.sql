use employee

-- Task 1: Identifying the Top 5 Highest Earning Job Titles

select t.title, max(s. salary) as `Highest Earners`
from titles t
join employees e on e. emp_no = t. emp_no
join salaries s on s.emp_no = t.emp_no
group by t.title
order by max(s.salary) desc
limit 5;

-- Task 2: Retrieving Employee Names and Payment Frequency

select e.first_name, e.last_name, count(s.salary) as `No of times paid`
from employees e
join salaries s on s.emp_no = e.emp_no
group by e.first_name, e.last_name
order by count(s.salary);


-- Task 3: Finding Names and Average Salaries of Top Earners
select e.first_name, e.last_name, avg(s.salary) as`Highest Average Salary Earner`
from employees e
join salaries s on s.emp_no = e.emp_no
group by e.first_name, e.last_name
order by avg(s.salary) desc
limit 5;


-- Task 4: Listing Managers and Their Departments

select e.first_name, e.last_name, dd.dept_name,d.dept_no
from employees e 
join dept_manager d on d.emp_no =e.emp_no
join departments dd on dd.dept_no = d.dept_no
group by e.first_name,e.last_name,dd.dept_name,d.dept_no;