  --Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make

select Makes.Make , FuelTypes.FuelTypeName , Count(*) as NumberOfVehicles from VehicleDetails
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
inner join FuelTypes on
FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
group by FuelTypeName,  Makes.Make 
order by Makes.Make ASC
