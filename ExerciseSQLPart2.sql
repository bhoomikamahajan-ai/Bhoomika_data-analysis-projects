
/*Write a query that returns the last 3 characters of the base name in other_FHV_services_jan_aug_2015.
 Do you see anything that is a common abbreviation at the end of business names?*/

 SELECT  Base_Number, (RIGHT(Base_Name, 3)) as Base_Name_Last
  FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
  -- INC is the common Abbreviation. 

  /*The number of trips and the number of pickups are both stored as strings in other_FHV_services_jan_aug_2015.
   This is because the data provided included spaces in some of the numbers.
   Write a query that returns the location of spaces in both of these columns.*/

   SELECT Pick_Up_Date, CHARINDEX(' ', Pick_Up_Date) as Space_1, Number_of_Trips, CHARINDEX(' ', Number_of_Trips) as Space_2
   FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015

   /*For other_FHV_services_jan_aug_2015, display the name of month of the pickup date and order in descending order.
    Is the result of this query what you expected?*/
        Select Base_Name,Base_Number,DATENAME(month, Pick_Up_Date) as Name_of_the_month
        FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
        ORDER BY Name_of_the_month DESC

    --The order of the month is in the Alphabettically order not by the actual order of the month in a year

   /*Using other_FHV_services_jan_aug_2015, write a query that returns the day number of the pickup date and month name 
   and orders it in ascending order by day number.*/
   SELECT DATEPART(day,Pick_Up_Date) as Day,DATENAME(Month,Pick_Up_Date) as Month
   FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
   ORDER BY [Day]Asc

   --Write a query that returns the most easterly Lyft pickup. Least negative value.
   Select MAX(start_lng)
    FROM RideShareDB.dbo.lyft

---Write a query the returns the most northerly Lyft pickup.
 Select max(start_lat)
 From RideShareDB.dbo.lyft

/*Using other_FHV_services_jan_aug_2015, write a query that connects the the base number and the base name
 in a string that uses the following format: base_number: base_name.*/

 Select CONCAT_WS(':',Base_Number,Base_Name)
 FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
