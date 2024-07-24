-- Return found=1 if there is any vehicle made in year 1950

select distinct found = 1 from VehicleDetails
where VehicleDetails.Year = 1950


select  found = 1 from VehicleDetails
where exists (
        select top 1 * from VehicleDetails where Year =1950
      )