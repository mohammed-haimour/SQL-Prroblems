 --Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000

 
select Makes.Make , DriveTypeName , Count(*) AS totalVehicles from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
inner join DriveTypes on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
group by Makes.Make , DriveTypeName
having Count(*) > 10000
order by totalVehicles asc


