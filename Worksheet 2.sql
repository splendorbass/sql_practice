--1.
select * from employees;

select first_name ||' '|| last_name as "이름", email as "이메일", phone_number as "전화번호"
  from employees
  order by hire_date asc;

--2.
select * from jobs;

select job_title, max_salary 
from jobs
order by max_salary desc;

--3.
select count(*) from employees
where manager_id is null;

--4번
select job_id, max_salary from jobs 
order by max_salary desc;

select * from jobs where job_id = 'AD_PRES';

--5
select * from departments;
select count(department_id) from departments;

--6
select department_name from departments
order by length(department_name) desc;

--7.
select count(*) from departments
where manager_id is null;

--8.
select upper(country_name)
from countries
order by upper(country_name) asc;

--9.
select distinct(region_id) 
from countries;

select region_name 
from regions
order by length(region_name) asc;

--10.
select distinct lower(city) 
from locations
order by lower(city) asc;

select distinct lower(city)
from locations
order by lower(city) asc;

