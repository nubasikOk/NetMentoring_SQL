SELECT EmployeesT.[FirstName] AS 'Seller'
    ,(SELECT ManagersT.[FirstName] 
        FROM [Employees] ManagersT 
        WHERE ManagersT.[EmployeeID] = EmployeesT.[ReportsTo]) 
    AS 'Manager'
FROM [Employees] EmployeesT