CREATE SCHEMA IF NOT EXISTS akanksha_schema;

CREATE TABLE akanksha_schema.mental_health_raw (
    "User_ID" VARCHAR(50),
    "Age" VARCHAR(10),
    "Gender" VARCHAR(20),
    "Daily_Screen_Time(hrs)" VARCHAR(20),
    "Sleep_Quality(1-10)" VARCHAR(20),
    "Stress_Level(1-10)" VARCHAR(20),
    "Days_without_Social_Media" VARCHAR(20),
    "Exercise_Frequency(Week)" VARCHAR(20),
    "Social_Media_Platform" VARCHAR(50),
    "Happiness_Index(1-10)" VARCHAR(20)
);

CREATE TABLE akanksha_schema.mental_health (
    wellbeing_id                BIGINT IDENTITY(1,1),
    user_id                     INTEGER,
    age                         SMALLINT,
    gender                      VARCHAR(20),
    daily_screen_time           DECIMAL(4,1),
    sleep_quality               SMALLINT,
    stress_level                SMALLINT,
    days_without_social_media   SMALLINT,
    exercise_frequency_per_week SMALLINT,
    social_media_platform       VARCHAR(50),
    happiness_index             SMALLINT
);
