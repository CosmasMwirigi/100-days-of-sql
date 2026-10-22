/*
Day 8 of #100DaysOfSQL
Topic: UNION operators

UNION operators combine the result sets of two or more SELECT statements
into a single result set.

UNION      removes duplicate rows: every row is unique
UNION ALL  keeps all rows, including duplicates

Each SELECT statement in the UNION must have:
- the same number of columns
- matching data types
*/

-- UNION: each job title appears once
SELECT
    job_title_short
FROM
    job_postings_fact
WHERE
    EXTRACT(MONTH FROM job_posted_date) = 1

UNION    -- combine the two results

SELECT
    job_title_short
FROM
    job_postings_fact
WHERE
    EXTRACT(MONTH FROM job_posted_date) = 2;


-- UNION ALL: duplicates are kept
SELECT
    job_title_short
FROM
    job_postings_fact
WHERE
    EXTRACT(MONTH FROM job_posted_date) = 1

UNION ALL

SELECT
    job_title_short
FROM
    job_postings_fact
WHERE
    EXTRACT(MONTH FROM job_posted_date) = 2;


-- These fail:
-- different number of columns: "each UNION query must have the same number of columns"
-- different data types (INT vs TEXT): "UNION types integer and text cannot be matched"
