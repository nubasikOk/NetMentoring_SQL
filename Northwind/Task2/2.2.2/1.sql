--ѕо таблице Orders найти количество заказов с группировкой по годам. 
--¬ результатах запроса надо возвращать две колонки c названи€ми Year и Total. 
--Ќаписать проверочный запрос, который вычисл€ет количество всех заказов.


Select YEAR(OrderDate) as [Year], count(OrderID) as [Total]
from orders
group by YEAR(OrderDate)

select count(orderID) from orders