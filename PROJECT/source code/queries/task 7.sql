Select avg(salary) as average, to_char(dob,'yyyy-mm') as dob from employees group by to_char(dob,'yyyy-mm') order by 2;
