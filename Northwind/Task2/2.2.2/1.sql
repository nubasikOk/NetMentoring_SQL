--�� ������� Orders ����� ���������� ������� � ������������ �� �����. 
--� ����������� ������� ���� ���������� ��� ������� c ���������� Year � Total. 
--�������� ����������� ������, ������� ��������� ���������� ���� �������.


Select YEAR(OrderDate) as [Year], count(OrderID) as [Total]
from orders
group by YEAR(OrderDate)

select count(orderID) from orders