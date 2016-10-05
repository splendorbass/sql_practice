select job_id ,salary from employees;
select distinct job_id from employees;

select employee_id,
	   salary,
	   CASE job_id 
	   WHEN 'AC_ACCOUNT' THEN salary+salary*0.1
	   WHEN 'AC_MGR' THEN salary + salary*0.2
	   WHEN 'AC_VP' THEN salary + salary*0.5
   ELSE salary
   	END	as"이번달 급여"
	from employees;
   	
select employee_id,
		salary,	   
	   DECODE( job_id,'AC_ACCOUNT', salary + salary*0.1,
	                  'AC_MGR',     salary + salary*0.2,
	                  'AC_VP',      salary + salary*0.5,
                                    salary ) as "이번달 급여"
	from employees;