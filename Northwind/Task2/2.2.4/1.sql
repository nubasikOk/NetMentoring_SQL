--¬ыдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет хот€ бы одного продукта на складе 
--(UnitsInStock в таблице Products равно 0). »спользовать вложенный SELECT дл€ этого запроса с использованием оператора IN
SELECT CompanyName
FROM Suppliers
WHERE Suppliers.SupplierID IN (SELECT Products.SupplierID
                                    FROM Products
                                    WHERE UnitsInStock = 0)