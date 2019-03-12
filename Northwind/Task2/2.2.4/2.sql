--Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT

Select e.FirstName+' '+E.LastName as Seller, count(o.orderID)  as countSales
from Orders o, Employees e
where o.EmployeeID=e.EmployeeID and 
        (SELECT COUNT(OrderID) 
        FROM Orders
        WHERE Orders.EmployeeID = e.EmployeeID)> 150
group by e.FirstName+' '+E.LastName
