select abs(10), abs(-10); -- 절대값
select mod(234,10), 254%10;
select floor(1.23), floor(-1.23);
select ceil(1.23),ceil(-1.23), ceiling(1.23), ceiling(-1.23);
select round(-1.23),round(-1.58),round(1.58);
select round(1.298,0);
select pow(2,2),power(2,-2);
select sign(-10),sign(0),sign(100);
select greatest(5,4,3,2,1),greatest(5.8,4.1,3.9,2.1,1.0),greatest("ABCD","ABCF","ABCZ");
select least(5,4,3,2,1),least(5.8,4.1,3.9,2.1,1.0),least("ABCD","ABCF","ABCZ");