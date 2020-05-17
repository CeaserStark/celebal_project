with cte
as(
select sum(cost)/sum(revenue_collection) as ratio, to_char(dob,'yyyy-mm') as Dob from project_detail
group by to_char(dob,'yyyy-mm')
order by 2)
select * from cte;