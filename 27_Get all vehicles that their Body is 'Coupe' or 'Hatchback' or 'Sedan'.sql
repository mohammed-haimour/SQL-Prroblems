--Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'

select * from VehicleDetails
inner join Bodies 
on Bodies.BodyID = VehicleDetails.BodyID
where Bodies.BodyName in ('Coupe' , 'Hatchback' , 'Sedan')