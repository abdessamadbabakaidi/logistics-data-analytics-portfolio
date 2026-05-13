-- which carrier handle the highest total miles--
select carrier , sum(miles) as total_miles
from acj
group by carrier 
having carrier !='Empty'
order by total_miles DESC


