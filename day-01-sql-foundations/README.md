# Day 1: SQL and Database Foundations

Today I learnt what SQL and databases are, the types of databases, where they live, and the basic SQL keywords.

## What is SQL?

**SQL** stands for **Structured Query Language**.

## What is a database?

A **database** is a collection of data. Its structure allows for efficient data storage, retrieval and management.

## Types of databases

| Type | Description |
|------|-------------|
| **Relational** | Very structured data stored in rows and columns, like a table |
| **Non-relational** | Unstructured data. Also known as **NoSQL**, meaning "Not only SQL" |

Non-relational databases support options such as:

- Key-value pairs
- Graph-based
- Column-based
- Document-based

## What is a query?

A **query** is a request for data from a database, allowing you to perform various operations like **CRUD**:

| Letter | Operation |
|--------|-----------|
| C | Create |
| R | Read |
| U | Update |
| D | Delete |

## Where databases are found

- **Locally** on your computer
- **On a server**:
  - On-premise company servers
  - Cloud servers like AWS, also known as serverless since you don't manage the servers

## Popular database options

1. PostgreSQL
2. MySQL
3. SQLite
4. MongoDB
5. Microsoft SQL Server

## Where to run database queries

1. Database provider editor
2. Cloud provider editor
3. Code editor

## Datasets and ERDs

An **ERD** is an **Entity Relationship Diagram**.

### Types of tables

| Table | What it does | Example |
|-------|--------------|---------|
| **Fact tables** | Contain the core data for business analysis. They measure and record business events | Job postings |
| **Dimension tables** | Describe attributes or dimensions of the data. They support filtering, grouping and labelling different sets of data | Skills, companies |

## Basic SQL keywords

- `SELECT`
- `FROM`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY` (with `ASC` or `DESC`)
- `LIMIT`
- `DISTINCT`

### Comments

```sql
-- This is a single line comment

/*
This is a multiple line comment
*/
```

### Query structure

The keywords are written in this order:

```sql
SELECT column1, column2
FROM table_name
WHERE condition
GROUP BY column
HAVING condition
ORDER BY column1 [ASC | DESC]
LIMIT number;
```

See [`query_structure.sql`](./query_structure.sql) for the annotated version.

## Key takeaways

- Relational databases store data in tables; NoSQL handles unstructured data.
- Fact tables record events; dimension tables describe them.
- SQL keywords follow a fixed order in a query.

---

[Back to all days](../README.md)
