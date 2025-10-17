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
where series_id like '%10'*/

--How many production/nonsupervisory employees were reported in 2016? Round to the nearest whole number.

SELECT  OUNT(*) as Total_Prod_Sup_EMP
FROM LaborStatisticsDB.dbo.annual_2016
WHERE SUBSTRING(series_id,13,1) = 6


SELECT LEN(series_id)
FROM LaborStatisticsDB.dbo.annual_2016