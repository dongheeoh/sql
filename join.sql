-- equijoin (innerjoin)
select concat(first_name,' ',last_name)as '이름',employees.emp_no,titles.emp_no,title from employees, 
titles where employees.emp_no = titles.emp_no;


-- 현재 근무중인 직원의 이름과 직책을 출력하세요
select a.emp_no, a.first_name, b.title from employees a,titles b where a.emp_no=b.emp_no -- join조건
and b.to_date='9999-01-01';

-- 현재 근무중인 직책이 senior Engineer인 직원의 이름을 출력하세용
select a.emp_no, a.first_name from employees a,titles b where a.emp_no=b.emp_no -- join조건
and b.to_date='9999-01-01' and b.title='Senior Engineer';

--
-- ANSI / ISO SQL의 JOIN
-- 



-- 1. natural join (단점 : 같은 이름이 많은 칼럼이 있으면 안좋음)
select a.emp_no, a.first_name, b.title from employees a natural join titles b -- join조건
where  b.to_date='9999-01-01';

-- 2. join~ using
select a.emp_no,a.first_name,b.title from employees a join titles b using(emp_no) where b.to_date;

-- 3. join~ in
select a.emp_no,a.first_name,b.title from employees a join titles b on a.emp_no = b.emp_no where b.to_date='9999-01-01';

-- 실습과제2
select a.emp_no,concat(a.first_name,' ',a.last_name)as '이름',b.salary 
	from employees a,salaries b 
		where a.emp_no=b.emp_no and b.to_date='9999-01-01' order by concat(a.first_name,' ',a.last_name) asc;

-- 실습과제1
select a.emp_no,concat(a.first_name,' ',a.last_name)as '이름',c.dept_name 
	from employees a, dept_emp b, departments c 
		where a.emp_no=b.emp_no and b.dept_no=c.dept_no and b.to_date='9999-01-01' order by concat(a.first_name,' ',a.last_name) asc;



