--По таблице Orders найти количество заказов, которые еще не были доставлены 
--(т.е. в колонке ShippedDate нет значения даты доставки). 
--Использовать при этом запросе только оператор COUNT. 
--Не использовать предложения WHERE и GROUP.


Select Count(CASE WHEN ShippedDate is null 
                  THEN 1 
				  ELSE Null 
				  END)
from Orders



