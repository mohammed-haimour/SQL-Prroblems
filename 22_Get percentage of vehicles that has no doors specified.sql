  --Problem 22: Get percentage of vehicles that has no doors specified

select (TotalWithNoDoorsSpecified * 100.0 / total)
as prec from (select Count(*) as TotalWithNoDoorsSpecified from VehicleDetails
where VehicleDetails.NumDoors is null)s1
,(select Count(*) as total from VehicleDetails) s2



select 
	(
	
	
		CAST(	(select count(*) as TotalWithNoSpecifiedDoors from VehicleDetails
		where NumDoors is Null) as float)


		/
	
	
		Cast( (select count(*) from VehicleDetails as TotalVehicles) as float)
	
	
	) as PercOfNoSpecifiedDoors



