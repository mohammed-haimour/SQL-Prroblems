  --Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD

select Count(*) from (select distinct Makes.Make , DriveTypes.DriveTypeName from VehicleDetails
inner join DriveTypes on 
DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
where DriveTypeName = 'FWD') s1