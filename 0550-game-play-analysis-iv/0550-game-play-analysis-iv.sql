WITH first_login AS (
    SELECT player_id, MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
)
SELECT 
    ROUND(
        SUM(
            CASE 
              WHEN EXISTS (
                  SELECT 1 
                  FROM Activity a 
                  WHERE a.player_id = f.player_id 
                    AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY)
              ) 
              THEN 1 ELSE 0 
            END
        ) * 1.0 / COUNT(*), 
        2
    ) AS fraction
FROM first_login f;
