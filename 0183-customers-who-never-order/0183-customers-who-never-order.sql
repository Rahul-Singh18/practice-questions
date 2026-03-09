# Write your MySQL query statement below
select c.name as customers
from customers as c
left join orders as o
on c.id=o.customerid
where o.id is null;