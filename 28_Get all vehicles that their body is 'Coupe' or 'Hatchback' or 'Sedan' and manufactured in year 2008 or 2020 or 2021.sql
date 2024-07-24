--Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured 
--in year 2008 or 2020 or 2021

select * from VehicleDetails
inner join Bodies 
on Bodies.BodyID = VehicleDetails.BodyID
where Bodies.BodyName in ('Coupe' , 'Hatchback' , 'Sedan') AND VehicleDetails.Year in (2008 , 2020 , 2021)