--Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа 
--(подзапрос по таблице Orders). Использовать оператор EXISTS

SELECT CustomerId
FROM Customers c
WHERE NOT EXISTS (SELECT o.OrderId
                    FROM Orders o
                    WHERE o.CustomerID = c.CustomerID)