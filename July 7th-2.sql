--1. Column Alias

select max(Age) from Employee  --- No Column Name in the output


select max(age) as Maximmum_Age from Employee


select max(age) Maximmum_Age from Employee


--2. Group By Clause

--List the Deptno and the Max Age for Each Department

select Deptno,max(age) from employee group by deptno

--3.Rob moved to chicago from california and he also shifted the department from 40 to 30.

update employee set City = 'chicago' , Deptno = 30 where empno = 8

--4.Write a basic T-SQL Program that will define a variable named Age and assign a value for the variable named age and print the value.

 declare @age int
 set @age =40
 print @age

 --5.Calculate the difference between two dates

 SELECT DATEDIFF(end_date, start_date) AS date_difference FROM employee
