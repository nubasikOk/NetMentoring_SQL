--������ ���� ����������� (������� CompanyName � ������� Suppliers), � ������� ��� ���� �� ������ �������� �� ������ 
--(UnitsInStock � ������� Products ����� 0). ������������ ��������� SELECT ��� ����� ������� � �������������� ��������� IN
SELECT CompanyName
FROM Suppliers
WHERE Suppliers.SupplierID IN (SELECT Products.SupplierID
                                    FROM Products
                                    WHERE UnitsInStock = 0)