--Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 

SELECT distinct emp.EmployeeId , emp.FirstName
FROM  Employees emp
        INNER JOIN EmployeeTerritories empTerritory 
            ON emp.EmployeeID = empTerritory.EmployeeID
        INNER JOIN Territories ter
            ON empTerritory.TerritoryID = ter.TerritoryID
        INNER JOIN Region reg
            ON reg.RegionID = ter.RegionID
WHERE reg.RegionDescription = 'Western'
