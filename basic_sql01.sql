-- basic 쿼리
drop table pet;

create table pet(
	name varchar(20),
	owner varchar(20),
	species varchar(20),
	gender char(1),
	brith date,
	death date
);

insert into pet values('누리','동희','말티즈','남','2019-01-15',NULL);

select *from pet;

-- load data
load data local infile "c:\\pet.txt" into table pet;


-- sql select
select *from pet; -- 모든 data 표시하고 싶은 경우
select *from pet where name="Bowser";
select *from pet where brith>='1998-01-01';
select *from pet where species='dog' and gender='f';
select *from pet where species='sanke' or species='bird';

select name,brith from pet;
-- data 정렬
select *from pet order by brith asc;

select name, brith from pet order by brith desc; -- 나이 적은순
select name, brith from pet order by brith asc;  -- 나이 많은순 (defalut값)

select name, gender , brith from pet order by gender asc, brith desc;

-- NULL 다루기 ( 산술연산자를 쓸 수 없다)
select name, gender from pet where gender is not null;

-- 패턴매칭 like 검색
select *from pet where name like '%a%';

select *from pet where name like '_____';

select *from pet where length(name) =5;
-- counting
select count(*) from pet;
-- having (where 절에 지나고 count로 새로 생성된 테이블에 찾기위해서 사용)
select owner, count(*) as '애완동물 수' from pet group by owner having count(*)>1;

select owner, count(*) from pet where death is null or death='0000-00-00' group by owner having count(*)>1;