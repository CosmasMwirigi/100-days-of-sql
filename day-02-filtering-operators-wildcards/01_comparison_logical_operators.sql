/*
Day 2 of #100DaysOfSQL
Topic: Comparison and logical operators

Used within the WHERE or HAVING clause.
Pattern for every condition: column, one operator, value.
SQL expects exactly one comparison operator between the column and the value.

Comparison operators: =, <>, >, <, >=, <=
Logical operators:    AND, OR, BETWEEN, IN
*/


-- SELECT * on line 1 means all columns
SELECT *
FROM job_postings_fact
WHERE job_schedule_type = 'Full-time';


-- Commas go between columns, never after the last one
SELECT job_title, job_location, salary_avg
FROM job_postings_fact;


/* ---------- Not equal to: three ways ---------- */

SELECT *
FROM job_postings_fact
WHERE job_schedule_type <> 'Part-time';

SELECT *
FROM job_postings_fact
WHERE job_schedule_type != 'Part-time';

SELECT *
FROM job_postings_fact
WHERE NOT job_schedule_type = 'Part-time';


/* ---------- Double negative trap ----------
NOT together with <> (or !=) creates a double negative.
The two cancel out, so this returns Part-time rows ONLY.
To exclude Part-time, use NOT with = instead (see above).
*/
SELECT *
FROM job_postings_fact
WHERE NOT job_schedule_type <> 'Part-time';


/* ---------- BETWEEN ----------
A range with two limits (a floor and a ceiling), written with AND.
One number in the question? Use a comparison operator.
Two numbers? BETWEEN is an option.
Numbers in SQL are written plain: 65000, not 65,000.
*/
SELECT *
FROM job_postings_fact
WHERE salary_avg BETWEEN 65000 AND 100000;


/* ---------- AND vs OR ----------
AND = both conditions must be true (strict)
OR  = at least one condition must be true (relaxed)
*/
SELECT *
FROM job_postings_fact
WHERE salary_avg >= 65000
  AND job_schedule_type = 'Full-time';

SELECT *
FROM job_postings_fact
WHERE salary_avg >= 65000
   OR job_schedule_type = 'Full-time';


/* ---------- IN and NOT IN ----------
IN is a shortcut for many ORs: matches any item in the list.
Rules:
  1. Put the list inside brackets ()
  2. Separate items with commas
  3. Text items go in single quotes; numbers don't
  4. Use it when checking one column against several values
*/
SELECT *
FROM job_postings_fact
WHERE job_location IN ('Boston, MA', 'Anywhere');

-- NOT IN flips it: anything except these
SELECT *
FROM job_postings_fact
WHERE job_location NOT IN ('Boston, MA', 'Anywhere');


/* ---------- Brackets ----------
SQL handles AND before OR, just like maths does
multiplication before addition: 2 + 3 x 4 = 14, not 20.
Brackets mean "do this part first". Each bracket is a self-contained rule.
Whenever WHERE has both AND and OR, use brackets, even when not
strictly needed. They make your intention clear.
*/

-- Without brackets: read as  Anywhere OR (Boston AND salary > 100000)
SELECT *
FROM job_postings_fact
WHERE job_location = 'Anywhere'
   OR job_location = 'Boston, MA'
  AND salary_avg > 100000;

-- With brackets: (Anywhere OR Boston) AND salary > 100000
SELECT *
FROM job_postings_fact
WHERE (job_location = 'Anywhere'
       OR job_location = 'Boston, MA')
  AND salary_avg > 100000;
