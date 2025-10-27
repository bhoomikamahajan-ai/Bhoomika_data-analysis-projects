/*
SELECT *
FROM LaborStatisticsDB.dbo.datatype
WHERE data_type_text like '%Women%'

SELECT  *
FROM LaborStatisticsDB.dbo.supersector
where supersector_name = 'Financial activities'


SELECT *
FROM LaborStatisticsDB.dbo.series
WHERE supersector_code = 55


SELECT *
FROM LaborStatisticsDB.dbo.industry
WHERE industry_name = 'Commercial banking'

--55522110


SELECT *
FROM LaborStatisticsDB.dbo.series
WHERE industry_code =55522110 AND supersector_code = 55 AND series_title = 'Women employees'

SELECT distinct COUNT(id)
FROM LaborStatisticsDB.dbo.annual_2016


SELECT *
FROM LaborStatisticsDB.dbo.series       
where data_type_code = 10

SELECT COUNT(series_id)
FROM LaborStatisticsDB.dbo.annual_2016
where series_id like '%10'

--How many production/nonsupervisory employees were reported in 2016? Round to the nearest whole number.

SELECT COUNT(*) as Total_Prod_Sup_Emp
FROM LaborStatisticsDB.dbo.annual_2016
WHERE SUBSTRING(series_id,13,1) = 6


SELECT *
FROM LaborStatisticsDB.dbo.annual_2016
WHERE series_id Like '%6'

SELECT *
FROM LaborStatisticsDB.dbo.series

--In January 2017, what is the average weekly hours worked by production and nonsupervisory employees across all industries?

 SELECT 
  LEFT(AVG(value),5) as avg_weekly_hours
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE SUBSTRING(series_id, 12,2)= 07

SELECT *
FROM LaborStatisticsDB.dbo.datatype-- 81

--What is the total weekly payroll for production and nonsupervisory employees across all industries in January 2017?
-- Round to the nearest penny.

SELECT SUM(value) as total_weekly_pay
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE SUBSTRING(series_id, 12,2)= 81

--In January 2017, for which industry was the average weekly hours worked by production
--and nonsupervisory employees the highest? Which industry was the lowest?


 SELECT 
  MAX(value) as highest_avg_weekly_hours,
  
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE SUBSTRING(series_id, 12,2)= 07;


  SELECT 
      value, 
    FROM LaborStatisticsDB.dbo.january_2017
     LEFT
    WHERE SUBSTRING(series_id, 12,2)= 07;



 SELECT 
  Min(value) as lowest_avg_weekly_hours
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE SUBSTRING(series_id, 12,2)= 07;

--In January 2016, for which industry was the total weekly payroll for production and nonsupervisory employees the highest? 
--Which industry was the lowest?

SELECT MAX(value) as max_weekly_pay
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE SUBSTRING(series_id, 12,2)= 81;
   
USE LaborStatisticsDB

SELECT TOP 1
    i.industry_name,
    j.value AS avg_weekly_hours
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN datatype AS d 
    ON s.data_type_code = d.data_type_code
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE d.data_type_text = 'Average weekly hours of production and nonsupervisory employees'
ORDER BY j.value DESC;


USE LaborStatisticsDB

SELECT TOP 1
    i.industry_name,
    j.value AS avg_weekly_hours
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 07
ORDER BY j.value ASC;



USE LaborStatisticsDB

SELECT TOP 1
    i.industry_name,
    j.value AS total_weekly_payroll
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 82
ORDER BY j.value DESC; 

-- Join annual_2016 with series on series_id. We only want the data in the annual_2016 table to be included in the result.

USE LaborStatisticsDB
GO

SELECT  TOP 50 a.*
FROM annual_2016 AS  a
INNER JOIN series AS s ON a.series_id = s.series_id
ORDER BY id;



-- Join series and datatype on data_type_code.

USE LaborStatisticsDB
GO

SELECT  TOP 50 *
FROM series AS s 
INNER JOIN datatype AS dt ON s.data_type_code = dt.data_type_code
ORDER BY series_id;



---Join series and industry on industry_code.

USE LaborStatisticsDB
GO

SELECT  TOP 50 *
FROM series AS s 
INNER JOIN industry AS ind ON s.industry_code = ind.industry_code
ORDER BY s.series_id, ind.id;

*/

---Write a query that returns the series_id, industry_code, industry_name, and value from the january_2017 table but 
--only if that value is greater than the average value for annual_2016 of data_type_code 82.

SELECT distinct(jan.series_id), s.industry_code, jan.value, ind.industry_name
FROM LaborStatisticsDB.dbo.january_2017 AS jan
INNER JOIN LaborStatisticsDB.dbo.series AS s ON s.series_id = jan.series_id
INNER JOIN LaborStatisticsDB.dbo.industry AS ind ON s.industry_code = ind.industry_code
where jan.value > (
    SELECT AVG(an.[value])
      FROM LaborStatisticsDB.dbo.annual_2016 AS an   
      INNER JOIN LaborStatisticsDB.dbo.series AS s ON s.series_id = an.series_id
      INNER JOIN LaborStatisticsDB.dbo.datatype AS dt ON dt.data_type_code =s.data_type_code
      WHERE dt.data_type_code = 82
);

--Write the above query as a common table expression!

WITH cte_avg_value_annual AS (
  SELECT AVG(an.[value]) AS an_value
      FROM LaborStatisticsDB.dbo.annual_2016 AS an   
      INNER JOIN LaborStatisticsDB.dbo.series AS s ON s.series_id = an.series_id
      INNER JOIN LaborStatisticsDB.dbo.datatype AS dt ON dt.data_type_code =s.data_type_code
      WHERE dt.data_type_code = 82
)

SELECT distinct(jan.series_id), s.industry_code, jan.value, ind.industry_name
FROM LaborStatisticsDB.dbo.january_2017 AS jan
INNER JOIN LaborStatisticsDB.dbo.series AS s ON s.series_id = jan.series_id
INNER JOIN LaborStatisticsDB.dbo.industry AS ind ON s.industry_code = ind.industry_code
where jan.value > ( SELECT * FROM cte_avg_value_annual);


---Create a Union table comparing average weekly earnings of production and nonsupervisory employees between annual_2016 
--and january_2017 using the data type 30. Round to the nearest penny. 
--You should have a column for the average earnings and a column for the year, and the period.

SELECT ROUND(AVG(jan.value), 1) AS avg_weekly_earnings, jan.year,jan.period 
FROM LaborStatisticsDB.dbo.january_2017 AS jan 
INNER JOIN LaborStatisticsDB.dbo.series AS s ON s.series_id = jan.series_id
WHERE s.data_type_code =30
GROUP BY jan.year, jan.[period]

UNION 

SELECT ROUND(AVG(ann.value), 1) AS avg_weekly_earnings, ann.year,ann.period 
FROM LaborStatisticsDB.dbo.annual_2016 AS ann 
INNER JOIN LaborStatisticsDB.dbo.series AS s ON s.series_id = ann.series_id

WHERE s.data_type_code =30
GROUP BY ann.[year], ann.[period]



SELECT TOP 1
    i.industry_name,
    j.value AS total_weekly_payroll
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 82
ORDER BY j.value DESC;


SELECT COUNT(series_id)
FROM LaborStatisticsDB.dbo.annual_2016
where series_id like '%10' 


SELECT TOP 1
    i.industry_name,
   AVG(j.value)  AS avg_weekly_hours
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 07
GROUP BY i.industry_name
ORDER BY AVG(j.value) DESC;


SELECT TOP 1
    i.industry_name,
   AVG(j.value)  AS avg_weekly_hours
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 07
GROUP BY i.industry_name
ORDER BY AVG(j.value) ASC;


SELECT TOP 1
    i.industry_name,
    j.value AS total_weekly_payroll
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 82
ORDER BY j.value DESC;



SELECT TOP 5
    i.industry_name,
    AVG(j.value) AS avg_weekly_hours
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 07
GROUP BY i.industry_name
ORDER BY AVG(j.value) DESC;


SELECT TOP 1
    i.industry_name,
    SUM(j.value) AS total_weekly_payroll
FROM january_2017 AS j
JOIN series AS s 
    ON j.series_id = s.series_id
JOIN industry AS i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = 30  -- total weekly payroll
GROUP BY i.industry_name
ORDER BY SUM(j.value) DESC;