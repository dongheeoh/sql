-- ex5. 현재 직책별로 평균 연봉과 인원수를 구하되 직책별로 인원이 100명 이상인 직책만 출력하세요.
select b.title,avg(a.salary),count(distinct a.emp_no) from salaries a, titles b where a.emp_no=b.emp_no and a.to_date='9999-01-01' group by title having count(distinct a.emp_no)>100; 
-- ex6. 현재 부서별로 현재 직책이 Engineer인 직원들에 대해서만 평균 급여를 구하세요.
select avg(b.salary) from titles a, salaries b where a.emp_no=b.emp_no and a.to_date='9999-01-01' and a.title='Engineer';
-- ex7. 현재 직책별로 급여의 총합을 구하되 Engineer직책은 제외하세요. 단, 총합이 2,000,000,000이상인 직책만 나타내며 급여총합에 대해서 내림차순(DESC)로 정렬하세요.
select a.title,sum(b.salary) from titles a,salaries b where a.emp_no=b.emp_no and a.to_date='9999-01-01'and a.title not in('Engineer') group by a.title having sum(b.salary)>'2000000000' order by sum(b.salary) desc;