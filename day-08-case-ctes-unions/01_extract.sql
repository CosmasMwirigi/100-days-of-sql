/*
Day 8 of #100DaysOfSQL
Topic: EXTRACT

EXTRACT gets a field (e.g. year, month, day) from a date/time value.
*/

SELECT
    job_title_short,
    job_posted_date,
    EXTRACT(YEAR FROM job_posted_date)  AS date_year,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(DAY FROM job_posted_date)   AS date_day
FROM
    job_postings_fact
LIMIT
    5;
