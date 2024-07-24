-- Get Make and Total Number Of Doors Manufactured Per Make

select Makes.Make , totalDoors = Sum(VehicleDetails.NumDoors) from VehicleDetails
inner join Makes
on Makes.MakeID = VehicleDetails.MakeID
group by Makes.Make
order by totalDoors DESC


SELECT        Makes.Make, Sum(VehicleDetails.NumDoors) AS TotalNumberOfDoors
FROM            VehicleDetails INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID

Group By Make
Order By TotalNumberOfDoors desc