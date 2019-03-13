--������ � ����������� ������� ����� ���� ���������� �� ������� Customers � ��������� ���������� �� ������� �� ������� Orders. 
--������� �� ��������, ��� � ��������� ���������� ��� �������, �� ��� ����� ������ ���� �������� � ����������� �������. 
--����������� ���������� ������� �� ����������� ���������� �������.

SELECT (Select ContactName from Customers where CustomerID=CustomersT.CustomerID) as Customer,
       COUNT(OrdersT.OrderId) AS 'OrdersCount'
FROM Customers CustomersT 
    LEFT JOIN Orders OrdersT 
        ON CustomersT.CustomerId = OrdersT.CustomerId
GROUP BY CustomersT.CustomerID
ORDER BY 'OrdersCount'