INSERT INTO akanksha_schema.mental_health (
    user_id,
    age,
    gender,
    daily_screen_time,
    sleep_quality,
    stress_level,
    days_without_social_media,
    exercise_frequency_per_week,
    social_media_platform,
    happiness_index
)
SELECT
    NULLIF(REGEXP_REPLACE("User_ID", '[^0-9]', ''), '')::INTEGER,
    NULLIF(REGEXP_REPLACE("Age", '[^0-9]', ''), '')::SMALLINT,
    "Gender",
    NULLIF(REGEXP_REPLACE("Daily_Screen_Time(hrs)", '[^0-9\.]', ''), '')::DECIMAL(4,1),
    NULLIF(REGEXP_REPLACE("Sleep_Quality(1-10)", '[^0-9]', ''), '')::SMALLINT,
    NULLIF(REGEXP_REPLACE("Stress_Level(1-10)", '[^0-9]', ''), '')::SMALLINT,
    NULLIF(REGEXP_REPLACE("Days_without_Social_Media", '[^0-9]', ''), '')::SMALLINT,
    NULLIF(REGEXP_REPLACE("Exercise_Frequency(Week)", '[^0-9]', ''), '')::SMALLINT,
    "Social_Media_Platform",
    NULLIF(REGEXP_REPLACE("Happiness_Index(1-10)", '[^0-9]', ''), '')::SMALLINT
FROM akanksha_schema.mental_health_raw;
