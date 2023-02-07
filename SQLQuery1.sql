-- Cobine all tables into hotels
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

select * FROM hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal