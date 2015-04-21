/*If you
want to substitute a NULL with an empty string, there are a number of ways for you to do this
programmatically. One option is to use COALESCE(<expression>, ''). For example, in this data,
only region can be NULL, so you can use the following query to replace a comma plus region
with an empty string when region is NULL.*/
SELECT empid, country, region, city,
country + COALESCE( N',' + region, N'') + N',' + city AS location
FROM HR.Employees;
/*Another option is to use the CONCAT function which, unlike the + operator, substitutes a
NULL input with an empty string. Here’s how the query looks*/
SELECT empid, country, region, city,
CONCAT(country, N',' + region, N',' + city) AS location
FROM HR.Employees;
/*adding the number of bits in the right of the columns values  */
Select productId
Right(Replicate('0',10)+cast(productid as varchar(10),10),10) as str_producid
From Production.product
/*Use char when the sizes of the column data entries are consistent.
Use varchar when the sizes of the column data entries vary considerably.
Use varchar(max) when the sizes of the column data entries vary considerably, and the size might exceed 8,000 bytes.*/
/*SQL Server uses the following precedence order for data types:
user-defined data types (highest)
sql_varian t
xml
datetimeoffset
datetime2
datetime
smalldatetime
date
time
float
real
decimal
money
smallmoney
bigint
int
smallint
tinyint
bit
ntext
text
image
timestamp
uniqueidentifier
nvarchar (including nvarchar(max) )
nchar
varchar (including varchar(max) )
char
varbinary (including varbinary(max) )
binary (lowest) */
/*QL Server 2012 obtains the date and time values by using the GetSystemTimeAsFileTime() Windows API*/
/*The accuracy can be determined by using the GetSystemTimeAdjustment() Windows API.*/
Select ProductCatalog.CatID, ProductCatalog.CatName, ProductCatalog.ProductID, ProductCatalog.ProdName, ProductCatalog.UnitPrice
Rank() over(Partition BY ProductCatalog.UnitPrice order by ProductCatalog.UnitPrice Desc )
From Sales.ProductCatalog
order by ProductCatalog.UnitPrice Desc
Create Table DocumentStore
(
[id] int not null primary key
[Document] varbinary(Max)Null
)
