  --Problem 12: Count Vehicles by make and order them by NumberOfVehicles from high to low.

select Makes.Make , Count(*) as NumberOfVehicles from VehicleDetails
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
group by Makes.Make
order by NumberOfVehicles DESC