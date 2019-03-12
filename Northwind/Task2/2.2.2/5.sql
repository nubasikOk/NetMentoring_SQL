--Найти всех покупателей, которые живут в одном городе

select c1.City, ContactName
from Customers c1
where City in 
(
  select c2.City from Customers c2
  group by c2.City
  having count(*) > 1
)
order by c1.City