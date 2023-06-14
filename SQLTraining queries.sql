/**										
1	Retrieve all the details of the Employee									
2	Retrieve all the details of the employee who does not have a phone number									
3	Retrieve all the details of the department which has the character "A" in its department name									
4	Retrieve Last name of all the employee whose last name ends with N									
5	Retrieve EmpName and Location of all the employees									
6	Retrieve all details of the employees who lives in Chicago									
7	Retrieve all details of the Employees who joined after 31-December-2017									
8	Retrieve Employee First Name, Last Name, Department Name and Grade									
9	Retrive all the Employee Names who has been with the company for more than 365 days									
10	Write a Query that will display a message like "First Name Last Name lives in Location" for all the rows									
11	Manager wants to see the Maximmum Salary for each department. He wants Employee Name,Dept Name,Max Salary									
12	Write a query that will display First Name and Last Name Together with all letters in upper case									
13	Write a query that will retrieve the last four digits of the phone number of all the employees									
14	Retrieve the City and Deptno. Avoid repeating the values meaning like eliminate duplicates while retrieving city and deptno	
**/
Select * from employee

Select * from employee where Phone = 'NULL'

Select * from Department where DNAME like '%A%'

select LastName from employee where LastName like '%N'

select concat(FirstName,'  ',LastName) as EmpName,Location from employee
                          
Select * from employee where Location = 'chicago'

Select * from employee where HireDate > '12/31/2017'

select e.FirstName,e.LastName,d.DNAME,s.Grade from employee e,Department d,Salary s
where e.EmpNo =s.Empno and e.Deptno =d.Deptno
 
select FirstName+'  '+LastName as EmpName from employee where DATEDIFF(dd,Hiredate,getdate())>365

select concat(FirstName,' ',LastName,' ','lives in',' ',[Location]) from employee

--Manager wants to see the Maximmum Salary for each department. He wants Employee Name,Dept Name,Max Salary

select * from employee right outer join Department on employee.Deptno = Department.Deptno 

select FirstName,LastName,DNAME,max(salary) DNAME from employee e 
right outer join Department d on  e.Deptno = d.Deptno
right outer join salary s on e.EmpNo = s.Empno 



select UPPER(FirstName+'  '+LastName  ) as EmpName from employee

select substring(phone,7,10) from employee

select distinct [Location],Deptno from employee





