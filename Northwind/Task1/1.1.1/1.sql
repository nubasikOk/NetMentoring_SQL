
--������� � ������� Orders ������, ������� ���� ���������� ����� 6 ��� 1998 ���� 
--(������� ShippedDate) ������������ � ������� ���������� � ShipVia >= 2. 
--������ ������ ���������� ������ ������� OrderID, ShippedDate � ShipVia. 

Select OrderID,ShipVia,ShippedDate 
From Orders
where ShipVia>=2 and ShippedDate>='May 06 1998'