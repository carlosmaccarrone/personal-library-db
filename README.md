# Personal Library Database

![Docker](https://img.shields.io/badge/Docker-Ready-blue?logo=docker)

This repository contains a **fictional library database** with books, authors, and genres. It is designed to showcase **best practices in database modeling, queries, and advanced PostgreSQL features**.

---

## 🔹 Purpose

- Demonstrate a **consistent relational data model** with many-to-many relationships.
- Showcase the use of **views, indexes, stored procedures (functions), triggers, and constraints**.
- Serve as a **ready-to-use database** for a backend project under development.

---

## 🚀 Launch the database with Docker

1. Make sure **Docker and Docker Compose** are installed.
2. From the project root:

```bash
docker network create --driver bridge --attachable library_net
docker-compose up -d
```
This will start:
	- PostgreSQL with the database personal_library.
	- pgAdmin for database management at http://localhost:8080 (user: admin@example.com, password: admin123).
	- And creates a external network to connect with a backend.

3. The scripts in sql/ are executed in numeric order, loading first the data model, then inserts, views, indexes, functions, triggers, and constraints.

---

## 📊 Example Usage

The `sample_queries/` folder contains example queries:

- `01-top-authors.sql` → Top authors by number of books  
- `02-books-by-genre.sql` → Books grouped by genre  
- `03-search-title-author.sql` → Search for books by partial title or author name  
- `04-get-books-by-author.sql` → Get books by a specific author using the stored procedure from `09-functions.sql`

The results of `01-top-authors.sql` and `02-books-by-genre.sql` are available as CSV files in `docs/`.

Example execution in psql:

```sql
-- Run top authors query
\i sample_queries/01-top-authors.sql

-- Run books by genre query
\i sample_queries/02-books-by-genre.sql

-- Search by partial title or author
\i sample_queries/03-search-title-author.sql

-- Get books by a specific author using the stored procedure
\i sample_queries/04-get-books-by-author.sql
```

---

📌 Additional Notes

Views: show joins between tables; their purpose is self-explanatory.

Indexes, functions, triggers, and constraints: each script contains comments explaining their purpose and benefits.

ER Diagram: personal_library_der.png shows the tables, relationships, and main constraints.

---

✅ Portfolio Purpose

Demonstrate advanced SQL usage and relational database modeling.

Provide a test database for future backend development projects.