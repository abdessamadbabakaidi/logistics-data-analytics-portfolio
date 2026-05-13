----Most Frequent Freight Routes----
create view Most_Frequent_Freight as (
select top 3 count(depart_city)as Trip_count,Depart_city,Destination_city
from acj
group by depart_city,Destination_city
having count(depart_city) >=2
order by trip_count DESC
)
