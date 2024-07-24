--Problem 18: Get total vehicles per DriveTypeName Per Make 
-- and order them per make asc then per total Desc\


select Makes.Make , DriveTypeName , Count(*) AS totalVehicles from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
inner join DriveTypes on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
group by Makes.Make , DriveTypeName
order by Makes.Make asc







