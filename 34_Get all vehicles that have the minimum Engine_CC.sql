-- Get all vehicles that have the minimum Engine_CC

select * from VehicleDetails
where Engine_CC = (select Min(Engine_CC) from VehicleDetails)