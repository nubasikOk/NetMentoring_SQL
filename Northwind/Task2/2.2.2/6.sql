--По таблице Employees найти для каждого продавца его руководителя.

select 
	concat(empl.LastName, ' ', empl.FirstName) as 'Employee', 
	concat(man.LastName, ' ', man.FirstName) as 'Manager' 
from Employees empl, Employees man
where empl.ReportsTo = man.EmployeeID
order by 'Employee', 'Manager' 