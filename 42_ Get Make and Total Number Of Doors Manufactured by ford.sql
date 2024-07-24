-- Get Make and Total Number Of Doors Manufactured by ford 

select totalNumberOfDoorsForFord = Sum(NumDoors) from VehicleDetails
inner join Makes
on Makes.MakeID = VehicleDetails.MakeID
where Makes.Make = 'Ford'