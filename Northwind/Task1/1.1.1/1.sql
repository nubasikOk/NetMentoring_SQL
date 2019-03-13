
--Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года 
--(колонка ShippedDate) включительно и которые доставлены с ShipVia >= 2. 
--Запрос должен возвращать только колонки OrderID, ShippedDate и ShipVia. 

Select OrderID,ShipVia,ShippedDate 
From Orders
where ShipVia>=2 and ShippedDate>='May 06 1998'