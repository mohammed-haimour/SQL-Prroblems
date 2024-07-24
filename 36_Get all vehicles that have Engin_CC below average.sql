-- Get all vehicles that have Engin_CC below average
select * from VehicleDetails
where Engine_CC < (select Avg(Engine_CC)  from VehicleDetails)