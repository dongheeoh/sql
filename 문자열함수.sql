-- mysql 문자열 함수
select ucase('Seoul'), upper('seoul');
select lcase('Seoul'), lower('SEOUL');

select substring('Happy Day',3,2) from dual;
select substring(first_name,3,2) from employees;


select concat(first_name, ' ',last_name) as '이름', hire_date from employees where substring(hire_date,1,4) ='1989';


-- 정렬위해서 사용
select lpad('hi',10,'*') from dual;
select rpad('hi',10,'*') from dual;
select lpad(cast(salary as char),10,'*') from salaries;

-- 문자열 자르기
select concat('-----',('hello      '),'-------'),concat('-----',rtrim('     hello'),'-----'),concat('-----',trim('  hello   '),'-----') from dual;
select trim(both 'x' from 'xxxxxxhixxxxxx'),
trim(leading 'x' from 'xxxxxxhixxxxxx'),
trim(trailing 'x' from 'xxxxxxhixxxxxx');





