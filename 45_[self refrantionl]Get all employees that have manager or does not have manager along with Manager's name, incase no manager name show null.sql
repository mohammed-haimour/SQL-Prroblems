-- 45_[self refrantionl]Get all employees 
-- that have manager or does not have manager along with Manager's 
-- name, incase no manager name show null

select Employees.Name, Employees.ManagerID, Employees.Salary, Managers.Name AS ManagerName from Employees
left join Employees as Managers 
on Employees.ManagerID = Managers.EmployeeID