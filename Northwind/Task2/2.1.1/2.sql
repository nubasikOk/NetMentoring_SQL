--�� ������� Orders ����� ���������� �������, ������� ��� �� ���� ���������� 
--(�.�. � ������� ShippedDate ��� �������� ���� ��������). 
--������������ ��� ���� ������� ������ �������� COUNT. 
--�� ������������ ����������� WHERE � GROUP.


Select Count(CASE WHEN ShippedDate is null 
                  THEN 1 
				  ELSE Null 
				  END)
from Orders



