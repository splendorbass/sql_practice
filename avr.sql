--집계

select avg(salary)
from employees
order by avg(salary) asc;

select department_id,avg(salary) as avg_salary
from employees
--where
group by department_id
order by avg_salary asc;

select department_id,avg(salary), max(salary),min(salary)
from employees
group by department_id;

select department_id, avg(salary)
from employees
group by department_id
having avg(salary) >5000;
