--Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g, не используя оператор BETWEEN. 

 Select CustomerID,Country
 from Customers
 where SUBSTRING(country, 1, 1) >='b' and  SUBSTRING(country, 1, 1) <='g'
 order by country