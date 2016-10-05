-- date -> 문자열

select employee_id, hire_date from employees;

select employee_id,
	   to_char( hire_date,'yyyy"년" MM"월" dd"일" AM hh12"시"mi"분":ss"초"') 
from employees;

select employee_id,
	   to_char(
	    hire_date,
		'yyyy"년" MM"월" dd"일" d"요일" ddd"일째 되는날"') 
from employees;

select employee_id,
	   to_char(
	    hire_date,
		'RRRR') 
from employees;