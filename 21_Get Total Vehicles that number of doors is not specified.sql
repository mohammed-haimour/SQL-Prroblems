--Problem 21: Get Total Vehicles that number of doors is not specified
select COUNT(*) from (select * from VehicleDetails
where VehicleDetails.NumDoors is null )s1