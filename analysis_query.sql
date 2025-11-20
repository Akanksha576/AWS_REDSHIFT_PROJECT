
SELECT
  AVG(age) AS avg_age,
  AVG(happiness_index) AS avg_happiness
FROM akanksha_schema.mental_health;

-- Screen time vs happiness
SELECT
  daily_screen_time,
  AVG(happiness_index) AS avg_happiness
FROM akanksha_schema.mental_health
GROUP BY daily_screen_time
ORDER BY daily_screen_time;
