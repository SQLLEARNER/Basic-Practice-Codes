# Basic-Practice-Codes
/*Basic Selection of the query */
Select custid,orderid
from sales.orders
group by custid
/*Code to show the use of aliasing and sorting of data in the Tsql*/
SELECT DISTINCT custid, YEAR(orderdate) AS orderyear
FROM Sales.Orders;
/*. Following are
the main query clauses specified in the order that you are supposed to type them (known as
“keyed-in order”):
1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. HAVING
6. ORDER BY*/
/*Logical query processing took places in this fashion
1. From
2. Where 
3. Group by
4. Having
5. Select
6. Order by */
Select Name
,Sum(salary)
,EmployeeID
From Employee
Where Employee Id in ('10','12','13')
Group by EmployeeId, Name
Having sum(salary)>1000
order by Name
/*Example to show the execution of the where clause in the query*/
SELECT country, YEAR(hiredate) AS yearhired  /* Here where clause evaluated before select clause thats why this cause error  */
FROM HR.Employees
WHERE yearhired >= 2003;
/* Result : Msg 207, Level 16, State 1, Line 3
Invalid column name 'yearhired'.*/
/*Difference Between having and where clause  */
The WHERE clause is evaluated before rows are grouped, and therefore is evaluated
per row. The HAVING clause is evaluated after rows are grouped, and therefore
is evaluated per group.
