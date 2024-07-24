-- Get all vehicles that have the Maximum Engine_CC

select * from VehicleDetails
where Engine_CC = (select Max(Engine_CC) from VehicleDetails)