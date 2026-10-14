/*
Day 3 of #100DaysOfSQL
Topic: Aggregate functions

Aggregate functions compute a single result from many input values.
They are used together with SELECT, GROUP BY and HAVING.

SUM()     adds up the values in a column     -> use it for totals
COUNT()   counts the number of rows          -> use it for "how many"
AVG()     average value
MAX()     maximum value
MIN()     minimum value
ROUND()   rounds a number off

COUNT(*)                the * means "every row that passed the filter"
COUNT(DISTINCT column)  counts only the distinct values that match the criteria

If the question says "how many" or "count", reach for COUNT.
If it says "total of" or "sum of", reach for SUM.
*/

SELECT
    SUM(salary_year_avg)            AS salary_sum,
    COUNT(*)                        AS count_rows,
    COUNT(DISTINCT job_title_short) AS unique_titles,
    ROUND(AVG(salary_year_avg), 0)  AS avg_salary,
    MAX(salary_year_avg)            AS max_salary,
    MIN(salary_year_avg)            AS min_salary
FROM job_postings_fact;
