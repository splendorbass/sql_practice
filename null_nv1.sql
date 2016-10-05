-- NULL 관련 함수

select nvl( null, 0 ) from dual;

select nvl( 1, 0 ) from dual;

select employee_id,
		 nvl(commission_pct,0),
		 nvl(commission_pct,0)*salary
from employees;

select nvl2( 1, 10, 0 ) from dual;

select employee_id,
		 nvl2(commission_pct,salary+commission_pct*salary,salary) as "이번달에 지급할 월급"
from employees;

select nullif( 6, 3+2 ) from dual;

select coalesce( null, null, null, 4, null) from dual;

select employee_id, nvl( to_char(manager_id), '매니저 없음') from employees;

