/*
Day 4 of #100DaysOfSQL
Topic: The full order to write a query

Mnemonic: Some Friendly Wolves Go Hunting Often Late

SELECT    -- what to show
FROM      -- which table
WHERE     -- filter rows
GROUP BY  -- make groups
HAVING    -- filter groups
ORDER BY  -- sort results
LIMIT     -- how many rows to return

Iteration: build it one clause at a time, run it, check, then add more.
*/

SELECT
    country,
    COUNT(job_id) AS job_count,
    AVG(salary)   AS avg_salary
FROM jobs
WHERE job_title = 'Data Analyst'
GROUP BY country
HAVING COUNT(job_id) > 2
ORDER BY avg_salary DESC
LIMIT 5;
