select *from department;

-- join on (inner join)
select *from employee a join department b on a.departmetn_no=b.no;


-- left join(outter join)
select a.name,ifnull(b.name,'없음') from employee a left join department b on a.departmetn_no=b.no;


-- right join(outter join)
select *from employee a right join department b on a.departmetn_no=b.no;

-- full join(outter join) - mysql은 지원안함
select *from employee a join department b on a.departmetn_no=b.no;