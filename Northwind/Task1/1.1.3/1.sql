--������� ��� ������ (OrderID) �� ������� Order Details (������ �� ������ �����������), 
--��� ����������� �������� � ����������� �� 3 �� 10 ������������ � ��� ������� Quantity � ������� Order Details. 
--������������ �������� BETWEEN. ������ ������ ���������� ������ ������� OrderID.

select distinct OrderID
from [Order Details]
where Quantity between 3 and 10