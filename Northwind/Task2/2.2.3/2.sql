--Выдать в результатах запроса имена всех заказчиков из таблицы Customers и суммарное количество их заказов из таблицы Orders. 
--Принять во внимание, что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса. 
--Упорядочить результаты запроса по возрастанию количества заказов.

SELECT CustomersT.ContactName,
       COUNT(OrdersT.OrderId) AS 'OrdersCount'
FROM Customers CustomersT 
    LEFT JOIN Orders OrdersT 
        ON CustomersT.CustomerId = OrdersT.CustomerId
GROUP BY CustomersT.ContactName
ORDER BY 'OrdersCount'