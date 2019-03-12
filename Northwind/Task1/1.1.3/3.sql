 Select CustomerID,Country
 from Customers
 where SUBSTRING(country, 1, 1) >='b' and  SUBSTRING(country, 1, 1) <='g'
 order by country