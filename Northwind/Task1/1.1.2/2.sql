--������� �� ������� Customers ���� ����������, �� ����������� � USA � Canada. 
--������ ������� � ������� ��������� IN. ���������� ������� � ������ ������������ � ��������� ������ 
--� ����������� �������. ����������� ���������� ������� �� ����� ����������.

Select ContactName, Country
from customers 
where country not IN('USA','Canada')
order by ContactName