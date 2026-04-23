# Write your MySQL query statement below
select user_id, count(prompt) as prompt_count, round(avg(tokens), 2) as avg_tokens
from prompts
group by user_id
having prompt_count > 2 and MAX(tokens) > AVG(tokens)
order by avg_tokens desc, user_id asc