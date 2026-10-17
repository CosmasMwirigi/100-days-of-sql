/*
Day 6 of #100DaysOfSQL
Topic: CREATE DATABASE, CREATE TABLE and INSERT INTO

CREATE TABLE  creates a table, with a data type for every column
INSERT INTO   adds rows of data to a table
VALUES        specifies the data you want to add

No comma after the last column or the last value, or you get a syntax error.
*/

-- Run this once, then connect to the new database
-- CREATE DATABASE sql_course;

CREATE TABLE job_applied (
    job_id                INT,
    application_sent_date DATE,
    custom_resume         BOOLEAN,
    resume_file_name      VARCHAR(255),
    status                VARCHAR(50)
);

INSERT INTO job_applied (
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    status
)
VALUES
    (1, '2026-10-01', TRUE,  'resume_01.pdf', 'submitted'),
    (2, '2026-10-02', FALSE, 'resume_02.pdf', 'interview scheduled'),
    (3, '2026-10-03', TRUE,  'resume_03.pdf', 'ghosted');

SELECT
    *
FROM
    job_applied;
