SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome Completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.employees AS e ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(o.OrderID)