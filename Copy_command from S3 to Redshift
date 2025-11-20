COPY akanksha_schema.mental_health_raw
FROM 's3://social-media-mental-health/Processed/Mental_Health_and_Social_Media_Balance_Dataset.csv'
IAM_ROLE 'arn:aws:iam::653842454613:role/RedshiftServerlessRole'
FORMAT AS CSV
IGNOREHEADER 1;
