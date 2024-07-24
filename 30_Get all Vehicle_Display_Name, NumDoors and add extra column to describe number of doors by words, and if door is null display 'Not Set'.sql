-- 30 :  Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of 
-- doors by words, and if door is null display 'Not Set'



Select Vehicle_Display_Name, NumDoors, DoorDescription =
Case 
	When NumDoors = 0 Then 'Zero Doors'
	When NumDoors = 1 Then 'One Door'
	When NumDoors = 2 Then 'Two Doors'
	When NumDoors = 3 Then 'Three Doors'
	When NumDoors = 4 Then 'Four Doors'
	When NumDoors = 5 Then 'Five Doors'
	When NumDoors = 6 Then 'Six Doors'
	When NumDoors = 7 Then 'Seven Doors'
	When NumDoors = 8 Then 'Eight Doors'
	When NumDoors is null Then 'No Doors'
	else 'not registerd in the system'
End
From VehicleDetails