--�� ������� Orders ����� ���������� �������, ��������� ������ ��������� � ��� ������� ����������. 
--���������� ���������� ��� ������ ��� �������, ��������� � 1998 ����. 

Select  e.FirstName+' '+e.LastName as Seller, c.ContactName as  Customer, count(orderID) as [count]
from Orders o, Employees e, Customers c
where o.CustomerID=c.CustomerID and o.EmployeeID=e.EmployeeID and Year(o.OrderDate)=1998
group by   e.FirstName+' '+e.LastName,c.ContactName
