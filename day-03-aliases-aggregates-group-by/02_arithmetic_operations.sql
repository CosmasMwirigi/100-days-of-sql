/*
Day 3 of #100DaysOfSQL
Topic: Arithmetic operations

+   Addition
-   Subtraction
*   Multiplication
/   Division
%   Modulus (returns the remainder of a division)

Arithmetic operations can be used in:
1. SELECT              performing calculations on data retrieved from the database
2. WHERE               filtering data on conditions that involve arithmetic or logical operations
3. ORDER BY            sorting results based on expressions that involve operations
4. GROUP BY / HAVING   grouping rows with the same values and filtering groups with conditions
*/

SELECT
    job_title_short,
    salary_year_avg / 12 AS monthly_salary     -- SELECT: calculate
FROM job_postings_fact
WHERE salary_year_avg * 0.9 > 60000            -- WHERE: filter
ORDER BY salary_year_avg / 12 DESC;            -- ORDER BY: sort


-- Modulus: the remainder after division (even job_ids give 0, odd give 1)
SELECT
    job_id,
    job_id % 2 AS remainder
FROM job_postings_fact;
