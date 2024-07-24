  --Problem 11: Get Total Makes that runs with GAS

select Count(*)as TotalMakesThatRunsGas from (select distinct Makes.Make , FuelTypeName from VehicleDetails
inner join FuelTypes on 
FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
where FuelTypeName = 'GAS'
) table1 