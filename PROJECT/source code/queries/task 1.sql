with cte
as(
select sum(case when country='INDIA' then salary else 0 end) as India
,
sum(case when country<>'INDIA' then salary else 0 end) as International
,sum(salary) as salary from employees)
select (India*100)/salary as India, (International*100)/salary as International from cte;