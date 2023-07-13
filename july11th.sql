--Write a query to find the second highest salary from an "employees" table

select max(salary) as secondHighestSalary
from ( select salary, rank() over (order by salary Desc) as rank from Salary)
as Subquery
where rank=2

--2.Write a query to find duplicate records in a table based on specific columns

select * from employee

select FirstName,City,count(*)
from employee
group by FirstName,City
Having count(*) > 1

--Write a query to calculate the running total of a column in a result set

select Empno,Grade,SUM(Salary) over(order by Empno) as RunningTotal
from Salary

CREATE TABLE sales (
  product_id INT,
  jan_sales INT,
  feb_sales INT,
  mar_sales INT
);

INSERT INTO sales (product_id, jan_sales, feb_sales, mar_sales)
VALUES
  (1, 100, 150, 200),
  (2, 80, 120, 180);

  select product_id , [month] , sales
  from (
         select product_id, jan_sales, feb_sales, mar_sales
		 from sales
	   ) as src
  Unpivot(
  sales For [month] In(jan_sales, feb_sales, mar_sales)
         ) as Unpiv
