-- Problem 5 :
-- Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000

select Company = Makes.Make, NumberOfVics = Count(*) from VehicleDetails
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
where year between 1950 and 2000
group by Makes.Make
having Count(*) > 12000
order by NumberOfVics desc

-- !!!without having!!!
select * from (select Company = Makes.Make, NumberOfVics = Count(*) from VehicleDetails
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
where year between 1950 and 2000
group by Makes.Make
) as sa
where NumberOfVics > 12000
order by NumberOfVics desc


