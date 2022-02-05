----QUESTION 1----
SELECT DISTINCT C.CustomerID, ContactName AS CustomerName FROM Customers AS C 
INNER JOIN Orders AS O 
ON C.CustomerID = O.CustomerID 
WHERE RequiredDate<ShippedDate

----QUESTION 2----
SELECT P.ProductName, S.CompanyName FROM PRODUCTS AS P
INNER JOIN Suppliers AS S
ON P.SupplierID= S.SupplierID

----QUESTION 3----
SELECT TOP 10 P.ProductName,P.SupplierID FROM [Order Details] AS OD
INNER JOIN Orders AS O
ON OD.OrderID=O.OrderID 
INNER JOIN Products AS P
ON P.ProductID=OD.ProductID
WHERE YEAR(OrderDate)= 1998

----QUESTION 4----
SELECT CONCAT(a.FirstName,' ',a.LastName) AS EmployeeName, CONCAT(b.FirstName,' ',b.LastName) AS ManagerName 
FROM Employees a, Employees b
WHERE a.ReportsTo=b.EmployeeID

----QUESTION 5----
SELECT CONCAT(b.FirstName,b.LastName) as ManagerName
FROM Employees a,Employees b
WHERE a.ReportsTo=b.EmployeeID
GROUP BY CONCAT(b.FirstName,b.LastName)
HAVING COUNT (a.ReportsTo)<2

----QUESTION 6----
SELECT  ProductName, UnitPrice FROM Products 
WHERE UnitPrice> (SELECT AVG(UnitPrice) FROM Products)

----QUESTION 7----
SELECT MAX(UnitPrice) AS Price FROM Products 
WHERE UnitPrice<(SELECT MAX(UnitPrice) FROM Products)

----QUESTION 8----
SELECT CONCAT(a.FirstName,' ',a.LastName) AS EmployeeName, CONCAT(b.FirstName,' ',b.LastName) AS ManagerName, a.BirthDate AS EmployeeAge, b.BirthDate AS ManagerAge
FROM Employees a, Employees b
WHERE a.ReportsTo=b.EmployeeID AND a.BirthDate<b.BirthDate

----QUESTION 9----
SELECT P.ProductName, O.OrderDate FROM [Order Details] AS OD
INNER JOIN Orders AS O
ON OD.OrderID=O.OrderID 
INNER JOIN Products AS P
ON P.ProductID=OD.ProductID
WHERE O.OrderDate= '1997-08-08 00:00:00.000'

----QUESTION 10----
SELECT ContactName, P.ProductName FROM [Order Details] AS OD
INNER JOIN Orders AS O
ON OD.OrderID=O.OrderID 
INNER JOIN Products AS P
ON P.ProductID=OD.ProductID
INNER JOIN Suppliers AS S
ON P.SupplierID= S.SupplierID
WHERE YEAR(OrderDate)= 1997

----QUESTION 11----
SELECT COUNT( DISTINCT (E.EmployeeID)) AS Employees FROM EmployeeTerritories AS E
INNER JOIN Territories AS T
ON E.TerritoryID=T.TerritoryID
INNER JOIN Region AS R 
ON T.RegionID=R.RegionID
WHERE R.RegionID=1

----QUESTION 12----
SELECT P.ProductName,P.SupplierID FROM [Order Details] AS OD
INNER JOIN Orders AS O
ON OD.OrderID=O.OrderID 
INNER JOIN Products AS P
ON P.ProductID=OD.ProductID
WHERE YEAR(OrderDate) != 1966




