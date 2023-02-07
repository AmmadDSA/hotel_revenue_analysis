
--Combine individual year data into hotels table
with hotels as (
	select * from dbo.['2015$']
	union
	select * from dbo.['2016$']
	union
	select * from dbo.['2017$']
	union
	select * from dbo.['2018$']
	union
	select * from dbo.['2019$']
	union
	select * from dbo.['2020$']
)

--group by year to view revenue for both hotels
select 
arrival_date_year,
hotel,
round(sum((stays_in_week_nights + stays_in_weekend_nights)*adr), 2) as revenue
from hotels
group by arrival_date_year, hotel
