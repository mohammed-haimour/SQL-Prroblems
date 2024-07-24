  --Problem 10: Get all Makes that runs with GAS

select distinct Makes.Make , FuelTypeName from VehicleDetails
inner join FuelTypes on 
FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
where FuelTypeName = 'GAS'
order by Make asc