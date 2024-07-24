  --Problem 23: Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'

select distinct Makes.MakeID , Makes.Make , SubModels.SubModelName from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
inner join SubModels on SubModels.SubModelID = VehicleDetails.SubModelID
	where SubModelName='Elite'




	
SELECT    distinct    VehicleDetails.MakeID, Makes.Make, SubModelName
FROM            VehicleDetails INNER JOIN
                         SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID 
						 INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID
	
	where SubModelName='Elite'