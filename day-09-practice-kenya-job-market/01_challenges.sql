/*
Day 9 of #100DaysOfSQL
Topic: Practice challenges on the Kenyan job market
Skills: WHERE, COUNT, GROUP BY, ORDER BY, LIMIT, LEFT JOIN, NOT IN, HAVING
*/


/*
Challenge 1 (Easy)
How many Data Analyst job postings are there in Kenya?
- Use the job_country column.
- Return one number, named kenya_data_analyst_jobs.
*/

-- Step 1: check how Kenya is spelled in the data
-- SELECT DISTINCT job_country FROM job_postings_fact WHERE job_country LIKE '%Ken%';

-- Solution (result: 551)
SELECT
    COUNT(job_id) AS kenya_data_analyst_jobs
FROM
    job_postings_fact
WHERE
    job_country = 'Kenya' AND
    job_title_short = 'Data Analyst';


/*
Challenge 2 (Medium)
Which 5 job titles (job_title_short) have the most postings in Kenya?
- Return job_title_short and the number of postings, named job_count.
- Sort from most to fewest postings.
*/

-- Solution
SELECT
    job_title_short,
    COUNT(job_id) AS job_count
FROM
    job_postings_fact
WHERE
    job_country = 'Kenya'
GROUP BY
    job_title_short
ORDER BY
    job_count DESC
LIMIT
    5;



/*
Challenge 3 (Hard)
Which companies post the most Data Analyst jobs in Kenya?
- Return the company name and the number of Data Analyst postings, named job_count.
- Leave out the placeholder names 'confidential' and 'Anonymous Employer'.
- Only show companies with 8 or more Data Analyst postings.
- Sort from most to fewest postings.
Hint: you will need a JOIN, NOT IN and HAVING.
*/

-- Solution
SELECT
    company_dim.name AS company_name,
    COUNT(job_postings_fact.job_id) AS job_count
FROM
    job_postings_fact
LEFT JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_postings_fact.job_country = 'Kenya' AND
    job_postings_fact.job_title_short = 'Data Analyst' AND
    company_dim.name NOT IN ('confidential', 'Anonymous Employer')
GROUP BY
    company_dim.name
HAVING
    COUNT(job_postings_fact.job_id) >= 8
ORDER BY
    job_count DESC;
