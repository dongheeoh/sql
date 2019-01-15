select curdate(),current_date();
select curtime(),current_time();
select now(),sysdate();

select emp_no, now() from employees; -- 시간을 구하고 쿼리안으로(게시판날짜)
select emp_no, sysdate() from employees; -- 쿼리안으로 나오고 전달

-- 포맷팅
select first_name,date_format(hire_date,'%Y년%m월%d일 %h:%i:%s') from employees;

-- 각 직원들의 이름과 근무개월 수
select first_name, concat(cast(period_diff(date_format(curdate(),'%Y%m') ,date_format(hire_date,'%Y%m')) as char),'개월') from employees;

-- 입사 후 6개월 뒤에 정규직으로 발령이 된다.
-- 발령날은 언제인가?
-- month,week,year,day 다 가능
select first_name,hire_date,date_add(hire_date,interval 6 month) from employees;

select date_add(cast('20160608' as date),interval 1000 day);



