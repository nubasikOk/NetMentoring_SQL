--����� ����� ����� ���� ������� �� ������� Order Details � ������ ���������� ����������� ������� � ������ �� ���. 
--����������� ������� ������ ���� ���� ������ � ����� �������� � ��������� ������� 'Totals'.

Select (SUM(UnitPrice)  - Sum(Discount)) * SUM(Quantity)   as Total
from [Order Details]