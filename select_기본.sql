show tables;

select * from employees LIMIT 0,1000;

select *from titles;

select emp_no,first_name,hire_date from employees;

-- column alias

select emp_no as '번호',first_name as '이름',hire_date as '입사일' from employees;

-- concat coulumn의 값을 합친것 

select emp_no as '번호',concat(first_name,' ',last_name) as '이름',hire_date as '입사일' from employees;

-- distinct (중복출력 x)
select distinct title from  titles;

-- order by
select concat(first_name, ' ',last_name) as '이름',gender,hire_date from employees order by hire_date desc;

select emp_no,salary from salaries where   from_date like '2001-%' order by salary desc;

select concat(first_name, ' ',last_name) as '이름',gender as '성별', hire_date from employees where gender='f' and hire_date< '1989-01-01' ;


select *from dept_emp where dept_no in ('d005' ,'d009');

select concat(first_name, ' ',last_name) as '이름', hire_date from employees where  hire_date LIKE '1989%' ;


