--Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (ShippedDate) 
--не включая эту дату или которые еще не доставлены. В запросе должны возвращаться только колонки OrderID 
--(переименовать в Order Number) и ShippedDate (переименовать в Shipped Date). 
--В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’, 
--для остальных значений возвращать дату в формате по умолчанию.

Select OrderID as [Order Number],
CASE
    WHEN ShippedDate is null THEN 'Not Shipped'
	Else convert(varchar, ShippedDate, 101)
	END AS [Shipped Date]
from Orders
where ShippedDate>'May 06 1998' or ShippedDate is null