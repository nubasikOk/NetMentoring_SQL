Select ContactName, Country
from customers 
where country not IN('USA','Canada')
order by ContactName