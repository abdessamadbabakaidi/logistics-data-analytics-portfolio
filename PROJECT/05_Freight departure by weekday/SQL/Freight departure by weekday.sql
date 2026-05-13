--- Freight departure by weekday---
select  datename(weekday,Depart_date) Day_Of_The_Week,count(*)Departures,
case when datename(weekday,Depart_date)='Monday' then 1
	 when datename(weekday,Depart_date)='Tuesday' then 2
	 when datename(weekday,Depart_date)='Wednesday'then 3
	 when datename(weekday,Depart_date)='Thursday' then 4
	 when datename(weekday,Depart_date)= 'Friday' then 5
	 when datename(weekday,Depart_date)= 'Sunday' then 7
end as Weekorder
from acj
where depart_city like '%IL' and miles > 50
group by datename(weekday,Depart_date)
union 
select 'Saturday',0,6
order by weekorder
