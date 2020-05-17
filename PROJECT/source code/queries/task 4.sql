with employee1
as(select * from employees where salary=(select max(salary) from employees)),
employee2
as(select * from employees where salary=(select max(salary) from employees where salary <(select max(salary) from employee1))),
employee3
as(select * from employees where salary=(select max(salary) from employees where salary <( select max(salary) from employee2))),
employee4
as(select * from employees where salary=(select max(salary) from employees where salary <( select max(salary) from employee3))),
employee5
as(select * from employees where salary=(select max(salary) from employees where salary <( select max(salary) from employee4)))
select * from employee1 UNION ALL select * from employee2 UNION ALL select * from employee3 UNION ALL select * from employee4 UNION ALL select * from employee5;