 --Problem 7: Get number of vehicles made between 1950 and 2000 per make
 --and add total vehicles column beside it, then calculate it's percentage

select * , (InCompanyTotal * 100.0 / total) AS Percentage from (select Company = Makes.Make , InCompanyTotal = Count(*) , total = (select count(*) from VehicleDetails)
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where year between 1950 and 2000
group by Makes.Make
) s1
order by InCompanyTotal desc
