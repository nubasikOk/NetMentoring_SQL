--������ � ����������� ������� ����� ���� ���������� �� ������� Customers � ��������� ���������� �� ������� �� ������� Orders. 
--������� �� ��������, ��� � ��������� ���������� ��� �������, �� ��� ����� ������ ���� �������� � ����������� �������. 
--����������� ���������� ������� �� ����������� ���������� �������.

SELECT CustomersT.ContactName,
       COUNT(OrdersT.OrderId) AS 'OrdersCount'
FROM Customers CustomersT 
    LEFT JOIN Orders OrdersT 
        ON CustomersT.CustomerId = OrdersT.CustomerId
GROUP BY CustomersT.ContactName
ORDER BY 'OrdersCount'