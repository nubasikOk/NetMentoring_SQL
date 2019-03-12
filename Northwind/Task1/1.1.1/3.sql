Select OrderID as [Order Number],
CASE
    WHEN ShippedDate is null THEN 'Not Shipped'
	Else convert(varchar, ShippedDate, 101)
	END AS [Shipped Date]
from Orders
where ShippedDate>'May 06 1998' or ShippedDate is null