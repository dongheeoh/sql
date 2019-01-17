desc employee;

insert 
	into employee
		values(null,'test',null);
        
select *from employee;

insert 
	into employee(name,no,departmetn_no)
		values('test2',null,null);

insert into employee(name) values('test3');

-- update 문
update employee 
	set name='test',
		departmetn_no=1
        where no=5;
        
delete from employee
where name='test2';

