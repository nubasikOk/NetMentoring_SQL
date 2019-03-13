--�� ������� Orders ����� ���������� �������, ��������� ������ ��������� � ��� ������� ����������. 
--���������� ���������� ��� ������ ��� �������, ��������� � 1998 ����. 

Select  ((select FirstName+' '+LastName  from Employees where EmployeeID=e.EmployeeID)) as Seller,
        ((select ContactName  from Customers where CustomerID=c.CustomerID))  as  Customer, count(orderID) as [count]
from Orders o, Employees e, Customers c
where o.CustomerID=c.CustomerID and o.EmployeeID=e.EmployeeID and Year(o.OrderDate)=1998
group by   e.EmployeeID,c.CustomerID
order by   e.EmployeeID,c.CustomerID