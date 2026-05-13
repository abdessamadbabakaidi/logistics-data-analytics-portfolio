-- monthly income  --
with  MilesPerMonth as (
select datename (month,depart_date)as month ,sum(miles)as total_miles,month(depart_date)ORDEROFMONTH
from acj
group by datename (month,depart_date),month(depart_date)
)
select month,cast((total_miles*2.50)as float)
from MilesPerMonth;