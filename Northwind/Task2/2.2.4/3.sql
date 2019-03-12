--������ ���� ���������� (������� Customers), ������� �� ����� �� ������ ������ 
--(��������� �� ������� Orders). ������������ �������� EXISTS

SELECT CustomerId
FROM Customers c
WHERE NOT EXISTS (SELECT o.OrderId
                    FROM Orders o
                    WHERE o.CustomerID = c.CustomerID)