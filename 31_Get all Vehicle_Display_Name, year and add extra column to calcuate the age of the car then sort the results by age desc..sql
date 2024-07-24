--Get all Vehicle_Display_Name, year and add extra 
--column to calcuate the age of the car then sort the results by age desc.

select VehicleDetails.Vehicle_Display_Name , year , age = (GetDate() - Year) from VehicleDetails
Order by Age Desc

