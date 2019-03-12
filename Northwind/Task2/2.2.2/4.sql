--Найти покупателей и продавцов, которые живут в одном городе. 
--Если в городе живут только один или несколько продавцов, или только один или несколько покупателей, 
--то информация о таких покупателя и продавцах не должна попадать в результирующий набор. 
--Не использовать конструкцию JOIN. 

select Customers.City, 
       CompanyName as Customer, 
       concat(LastName, ' ', FirstName) as Seller 
from Customers, Employees
where Customers.City = Employees.City
order by Customer, Seller