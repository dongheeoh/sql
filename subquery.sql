-- subquery

select b.dept_no,concat(a.first_name,' ',a.last_name) as '전체이름'
	from employees a, dept_emp b 
		where a.emp_no=b.emp_no
			and concat(a.first_name,' ',a.last_name)='Fai Bale'
				and b.to_date='9999-01-01';
                
                
select a.emp_no,b.dept_no,concat(a.first_name,' ',a.last_name) as '전체이름'
	from employees a,dept_emp b 
		where a.emp_no=b.emp_no
			and b.dept_no=(select b.dept_no
	from employees a, dept_emp b 
		where a.emp_no=b.emp_no
			and concat(a.first_name,' ',a.last_name)='Fai Bale'
				and b.to_date='9999-01-01');
                
-- 실습과제문제 ex1
select a.first_name,b.salary
	from employees a, salaries b 
      where a.emp_no=b.emp_no
		and b.to_date='9999-01-01'
			and salary<(select avg(salary) from salaries where to_date='9999-01-01');
            
            select a.first_name,b.salary
	from employees a, salaries b 
      where a.emp_no=b.emp_no
		and b.to_date='9999-01-01'
			and salary<(select avg(salary) from salaries where to_date='9999-01-01')
		order by b.salary desc;
        
        
-- 실습과제 ex2
select b.title,avg(a.salary) as 'avg_salary'
	from  salaries a,titles b,employees c
    where c.emp_no=a.emp_no and c.emp_no=b.emp_no
    and a.to_date='9999-01-01'
    and b.to_date='9999-01-01'
		group by title;
        
-- -----------------서브쿼리 후

select title,min(avg_salary)
from(select b.title, round(avg(a.salary)) as 'avg_salary'
	from  salaries a,titles b , employees c
    where c.emp_no=a.emp_no and c.emp_no=b.emp_no
    and a.to_date='9999-01-01'
    and b.to_date='9999-01-01'
		group by title)a;
        
-- 다중행
-- any
-- =any (in이랑 완전 동일 ), > any (한개라도 크면 됨) , < any , <>any (!=any), >= any , <= any
-- all
-- =all, >,<,>=,<=,<> all 사용 가능

-- ex)

select emp_no
	from salaries where to_date='9999-01-01' and salary>50000;
    
    
select concat(first_name,' ',last_name) as '이름', b.salary
	from employees a, salaries b
		where a.emp_no=b.emp_no and b.to_date='9999-01-01' and a.emp_no= any(select a.emp_no
	from salaries where to_date='9999-01-01' and salary>50000);
-- ----------------------------------------------------------------------------------------        
        select concat(first_name,' ',last_name) as '이름', b.salary
	from employees a, salaries b
		where a.emp_no=b.emp_no and b.to_date='9999-01-01' and a.emp_no in(select a.emp_no
	from salaries where to_date='9999-01-01' and salary>50000);
    

select concat(a.first_name,' ',a.last_name) as 'name', b.salary
	from employees a ,(select emp_no, salary
	from salaries where to_date='9999-01-01' and salary>50000) b 
	where a.emp_no=b.emp_no;
    
    
    
    