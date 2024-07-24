-- Get all vehicles that their body is 'Sport Utility' and Year > 2020
select * from VehicleDetails
inner join Bodies on
Bodies.BodyID = VehicleDetails.BodyID
where Bodies.BodyName = 'Sport Utility' and Year > 2020