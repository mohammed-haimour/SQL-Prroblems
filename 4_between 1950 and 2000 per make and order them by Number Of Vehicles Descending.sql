-- Problem 4 : Get number vehicles made
-- between 1950 and 2000 per make and order them by Number Of Vehicles Descending

select Makes.Make , totalNumberOfVehicles = count(*) from VehicleDetails
inner join Makes
on Makes.MakeID = VehicleDetails.MakeID
where year between 1950 and 2000
group by Makes.Make
order by totalNumberOfVehicles desc
