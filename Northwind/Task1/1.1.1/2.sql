Select OrderID,
CASE
    WHEN ShippedDate is null THEN 'Not Shipped'
	END AS DateShipping
from Orders
where ShippedDate is null