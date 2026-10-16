/*
Day 5 of #100DaysOfSQL
Sample tables for practising JOINs

Your data is often split across different tables, like separate spreadsheets.
These two small tables share one column: company_id.

Run this file first, then try the JOIN files against it.
(Tested in SQLite 3.39+, which supports RIGHT and FULL OUTER JOIN.)
*/

CREATE TABLE job_postings_fact (
    job_id          INTEGER,
    job_title_short TEXT,
    company_id      INTEGER
);

INSERT INTO job_postings_fact VALUES
    (1, 'Data Analyst',   10),
    (2, 'Data Engineer',  20),
    (3, 'Data Scientist', 99);   -- no company with id 99

CREATE TABLE company_dim (
    company_id INTEGER,
    name       TEXT
);

INSERT INTO company_dim VALUES
    (10, 'Acme Corp'),
    (20, 'Zuri Data'),
    (30, 'Nova Labs');           -- no jobs for this company
