/*
Day 7 of #100DaysOfSQL
Topic: UPDATE

UPDATE  modifies existing data in a table
SET     specifies the column to update and its new value
WHERE   filters which rows to update, based on a condition

Without WHERE, UPDATE changes EVERY row in the table.
*/

CREATE TABLE job_applied (
    job_id            INT,
    status            VARCHAR(50),
    resume_file_name  VARCHAR(255)
);

INSERT INTO job_applied (
    job_id,
    status,
    resume_file_name
)
VALUES
    (1, 'submitted', 'resume_01.pdf'),
    (2, 'submitted', 'resume_02.pdf');

-- Format:
-- UPDATE
--     table_name
-- SET
--     column_name = 'new value'
-- WHERE
--     condition;

UPDATE
    job_applied
SET
    status = 'interview scheduled'
WHERE
    job_id = 2;

SELECT
    *
FROM
    job_applied;
