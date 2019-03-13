--Написать запрос, который выводит только недоставленные заказы из таблицы Orders. 
--В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’ 
--(использовать системную функцию CASЕ). Запрос должен возвращать только колонки OrderID и ShippedDate


Select OrderID,
CASE
    WHEN ShippedDate is null THEN 'Not Shipped'
	END AS DateShipping
from Orders
where ShippedDate is null