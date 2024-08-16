-- 47 [self refrantionl] Get All Employees managed by 'Mohammed'



select * from (select Employees.Name, Employees.ManagerID, Employees.Salary,
	 Managers.Name

AS ManagerName from Employees
left join Employees as Managers 
on Employees.ManagerID = Managers.EmployeeID) sm1
where ManagerName = 'Mohammed'