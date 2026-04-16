# Write your MySQL query statement below
-- select user_id, max(time_stamp) as last_stamp
-- from logins
-- where time_stamp >= '2020-01-01' and time_stamp <= '2020-12-31'
-- group by user_id
SELECT 
    user_id,
    MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id;
