-- 46_[self refrantionl] Get all employees that have manager or does not have manager along 
-- with Manager's name, incase no 
-- manager name the same employee name as manager to himself

select Employees.Name, Employees.ManagerID, Employees.Salary,
CASE 
	WHEN Managers.Name is null then Employees.Name
	else Managers.Name
END
AS ManagerName from Employees
left join Employees as Managers 
on Employees.ManagerID = Managers.EmployeeID