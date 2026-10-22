/*
Day 8 of #100DaysOfSQL
Topic: CASE expressions

A CASE expression applies conditional logic within your SQL queries.

CASE   begins the expression
WHEN   specifies the condition to look at
THEN   what to do when the condition is true
ELSE   (optional) output if none of the WHEN conditions are met
END    concludes the CASE expression
*/

SELECT
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
LIMIT
    10;
