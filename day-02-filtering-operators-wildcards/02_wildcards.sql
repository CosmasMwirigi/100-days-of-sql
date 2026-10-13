/*
Day 2 of #100DaysOfSQL
Topic: Wildcards with LIKE

1. Wildcards substitute one or more characters in a string
2. Wildcards are used with the LIKE operator
3. LIKE, % and _ are used in the WHERE clause

%  = anything, any length (zero, one or many characters)
_  = exactly one character (not zero, not two). Each _ is one slot.
*/


-- = checks for an exact match
SELECT *
FROM job_postings_fact
WHERE job_title = 'Data Analyst';


/* ---------- % : where you put it changes the meaning ---------- */

-- Starts with Data: "Data Analyst", "Data Engineer", "Data"
SELECT *
FROM job_postings_fact
WHERE job_title LIKE 'Data%';

-- Ends with Analyst: "Data Analyst", "Business Analyst"
SELECT *
FROM job_postings_fact
WHERE job_title LIKE '%Analyst';

-- Contains Senior anywhere: "Senior Data Engineer", "Lead Senior Analyst"
SELECT *
FROM job_postings_fact
WHERE job_title LIKE '%Senior%';


/* ---------- _ : exactly one character ----------
'Tech_'          Tech plus one character
'_ata Analyst'   any one letter, then "ata Analyst"
'202_'           any 4-character string starting with 202
'___'            any value exactly 3 characters long
*/
SELECT *
FROM job_postings_fact
WHERE job_title LIKE '_ata Analyst';


/* ---------- NOT LIKE ----------
Does the opposite: doesn't match this pattern.
*/
SELECT job_title, job_location
FROM job_postings_fact
WHERE job_title LIKE '%Analyst'
  AND job_title NOT LIKE '%Senior%';


-- Without wildcards, LIKE behaves just like =
SELECT *
FROM job_postings_fact
WHERE job_title LIKE 'Data Analyst';
