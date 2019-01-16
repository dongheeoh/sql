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
	from  salaries a,titles b
    where a.emp_no=b.emp_no
    and a.to_date='9999-01-01'
    and b.to_date='9999-01-01'
		group by title;
        
select title,min(avg_salary)
from(select b.title, round(avg(a.salary)) as 'avg_salary'
	from  salaries a,titles b
    where a.emp_no=b.emp_no
    and a.to_date='9999-01-01'
    and b.to_date='9999-01-01'
		group by title)a;
        
        