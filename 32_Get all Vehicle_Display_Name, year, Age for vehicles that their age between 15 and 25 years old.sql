-- Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old 

 select * from
( 
	Select VehicleDetails.Vehicle_Display_Name, Year, Age= YEAR(GetDate()) - VehicleDetails.year
	from VehicleDetails
) R1

Where Age between 15 and 25


select Vehicle_Display_Name, Year, Year(getDate())-Year as Age
from VehicleDetails  where (Year(getDate())- Year) between 15 and 25
order by Age desc;