--������� ���� ���������� �� ������� Customers, � ������� �������� ������ ���������� �� ����� �� ��������� b � g. 
--������������ �������� BETWEEN. ���������, ��� � ���������� ������� �������� Germany. 
--������ ������ ���������� ������ ������� CustomerID � Country � ������������ �� Country.
 
 Select CustomerID,Country
 from Customers
 where SUBSTRING(country, 1, 1) between 'b' and 'g'
 order by country