--  40 Get all Makes that manufactures one of the Max 3 Engine CC

select distinct Makes.Make from VehicleDetails
inner join Makes on 
Makes.MakeID = VehicleDetails.MakeID
where Engine_CC in (Select distinct top 3 Engine_CC from VehicleDetails order by Engine_CC DESC)
order by Makes.Make











SELECT        distinct Makes.Make
FROM            VehicleDetails INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID
WHERE        (VehicleDetails.Engine_CC IN
                             (SELECT DISTINCT TOP (3) Engine_CC
                               FROM            VehicleDetails 
                               ORDER BY Engine_CC DESC)
							 )

Order By Make