create table user(
	no int unsigned not null auto_increment,
    email varchar(50) not null,
    password varchar(64) not null,
    name varchar(20),
    juminbunho char(13) not null,
    join_date datetime not null,
    dept_no int unsigned not null,
    
    primary key(no),
    -- restrict , set null(널로 해라), cascade(같이 삭제해라)
    foreign key(dept_no) references dept(no) on delete cascade
);

desc member;
desc user;

-- 칼럼추가
alter table member add column juminbunho char(13) not null;

alter table member add column juminbunho char(13) not null first;

alter table member add column join_date datetime not null;
-- 칼럼삭제
alter table member drop column juminbunho;

-- Table 수정
alter table member change no no int unsigned not null auto_increment;

alter table member change department_name dept_name  varchar(20) not null default'none';

drop table member;


-- alter table 이름 변경
alter table member rename user;

-- foreign key constraint(제약조건 : 데이터의 생성 삭제 수정에 제약을 가하는 것이다.)
create table dept(
	no int unsigned not null auto_increment,
    name varchar(50) not null,
    primary key(no)
);


desc dept;

drop table user;
alter table user drop column dept_name;

-- ---------------------------
insert into dept(name) values('개발팀');
select *from dept;
select *from user;



insert into user values(null,'a@a.com',password('1234'),'둘리','',now(),2);

-- 참조 삭제 불가 (참조하는거 지우고 지워야함)
delete from dept where no=1;
delete from user where no=1;


