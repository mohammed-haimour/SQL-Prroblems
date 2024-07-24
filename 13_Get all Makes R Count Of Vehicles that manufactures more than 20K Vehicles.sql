  --Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles

select Makes.Make , Count(*) as NumberOfVehicles from VehicleDetails
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
group by Makes.Make
having Count(*) > 20000
order by NumberOfVehicles DESC