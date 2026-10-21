/*
Day 7 of #100DaysOfSQL
Topic: Casting and date functions

:: is used for casting: converting a value from one data type to another.

Date functions perform operations on date and time values:
::DATE         converts to a date format by removing the time portion
AT TIME ZONE   converts a timestamp to a specified time zone
EXTRACT        gets specific date parts (year, month, day)

Formats:
DATE                       YYYY-MM-DD            2026-10-21
TIMESTAMP                  YYYY-MM-DD HH:MI:SS   2026-10-21 15:04:05
TIMESTAMP WITH TIME ZONE   adds the offset       2026-10-21 15:04:05+00:00
*/

-- Casting: convert text into different data types
SELECT
    '2026-10-21'::DATE,
    '123'::INTEGER,
    'true'::BOOLEAN,
    '3.14'::REAL;


-- ::DATE removes the time portion of a timestamp
SELECT
    job_title_short,
    job_posted_date::DATE AS date
FROM
    job_postings_fact
LIMIT
    5;


-- AT TIME ZONE converts between time zones.
-- job_posted_date has no time zone, so first say it's UTC,
-- then convert it to Nairobi time (UTC+3).
SELECT
    job_title_short,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'Africa/Nairobi' AS date_time_nairobi
FROM
    job_postings_fact
LIMIT
    5;


-- EXTRACT pulls out one part of a date
SELECT
    job_title_short,
    job_posted_date,
    EXTRACT(YEAR FROM job_posted_date)  AS year,
    EXTRACT(MONTH FROM job_posted_date) AS month,
    EXTRACT(DAY FROM job_posted_date)   AS day
FROM
    job_postings_fact
LIMIT
    5;
