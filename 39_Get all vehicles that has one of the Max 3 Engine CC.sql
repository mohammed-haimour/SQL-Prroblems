-- Get all vehicles that has one of the Max 3 Engine CC
select * from VehicleDetails
where Engine_CC in (Select distinct top 3 Engine_CC from VehicleDetails order by Engine_CC DESC)