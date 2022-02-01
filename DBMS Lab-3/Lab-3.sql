----------QUESTION 1----------
SELECT empid, 
		firstname, 
		lastname, 
		n 
FROM HR.Employees 
CROSS JOIN dbo.Nums 
WHERE n <= 5 
ORDER BY n;

----------QUESTION 2----------
SELECT empid, 
	   hiredate AS dt 
FROM HR.Employees 
CROSS JOIN dbo.NUMS 
WHERE hiredate BETWEEN '20010505' AND '20010510';

----------QUESTION 3----------
--SELECT Customers.custid, Customers.companyname, Orders.orderid, Orders.orderdate FROM Sales.Customers AS C INNER JOIN Sales.Orders AS O ON Customers.custid = Orders.custid;--
SELECT c.custid, 
	   c.companyname, 
	   o.orderid, 
	   o.orderdate
FROM Sales.Customers AS c 
INNER JOIN Sales.Orders AS o 
ON c.custid= o.custid 
ORDER BY custid;

----------QUESTION 4----------
SELECT C.custid AS id,
	   COUNT(DISTINCT O.orderid) AS numorders,
	   SUM (OD.qty) AS totalqty	   
FROM Sales.Customers AS C 
INNER JOIN Sales.Orders AS O 
	ON C.custid= O.custid
INNER JOIN Sales.OrderDetails AS OD
	ON O.orderid= OD.orderid
GROUP BY C.custid

----------QUESTION 5----------
SELECT C.custid,
	   C.companyname,
	   O.orderid,
	   O.orderdate
FROM Sales.Customers AS C 
LEFT JOIN Sales.Orders AS O 
	ON C.custid= O.custid

----------QUESTION 6----------
SELECT C.custid,
	   C.companyname
FROM Sales.Customers AS C 
LEFT JOIN Sales.Orders AS O 
	ON C.custid= O.custid
WHERE O.orderid IS NULL

----------QUESTION 7----------
SELECT C.custid,
	   C.companyname,
	   O.orderid,
	   O.orderdate
FROM Sales.Customers AS C 
INNER JOIN Sales.Orders AS O 
	ON C.custid= O.custid
WHERE O.orderdate = '20060712';

----------QUESTION 8----------
SELECT C.custid,
	   C.companyname,
	   O.orderid,
	   O.orderdate
FROM Sales.Customers AS C 
LEFT JOIN Sales.Orders AS O 
	ON C.custid=O.custid
	AND O.orderdate='20060712'
	OR O.orderid is NULL;

----------QUESTION 9----------
--The WHERE claus is the reason why this query isn't the correct answer













