--Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 

SELECT distinct EmployeesT.EmployeeId , EmployeesT.FirstName
FROM  Employees EmployeesT
        INNER JOIN EmployeeTerritories EmployeeTerritoriesT 
            ON EmployeesT.EmployeeID = EmployeeTerritoriesT.EmployeeID
        INNER JOIN Territories TerritoriesT 
            ON EmployeeTerritoriesT.TerritoryID = TerritoriesT.TerritoryID
        INNER JOIN Region RegionT 
            ON RegionT.RegionID = TerritoriesT.RegionID
WHERE RegionT.RegionDescription = 'Western'