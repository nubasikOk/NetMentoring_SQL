--������� �� ������� Customers ���� ����������, ����������� � USA � Canada. ������ ������� � ������ ������� ��������� IN. 
--���������� ������� � ������ ������������ � ��������� ������ � ����������� �������. 
--����������� ���������� ������� �� ����� ���������� � �� ����� ����������.

Select ContactName, Country
from customers 
where country IN('USA','Canada')
order by ContactName,Country