# Write your MySQL query statement below
Select user_id as buyer_id, join_date, count(buyer_id) orders_in_2019
from Users 
left join Orders
on Users.user_id = Orders.buyer_id And YEAR(order_date)=2019
group by  Users.user_id  