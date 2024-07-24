  --Problem 16: Get all Makes that manufactures DriveTypeName = FWD

select distinct Makes.Make , DriveTypes.DriveTypeName from VehicleDetails
inner join DriveTypes on 
DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
where DriveTypeName = 'FWD'