# SQL-50

Practice repository for learning and mastering SQL through 50 focused exercises.

**Purpose:** Provide a simple, self-contained collection of SQL problems with example schemas and starter data so learners can practice queries, joins, aggregations, window functions, and more.

**Structure**
- `exercise-01/`, `exercise-02/`, ... : Optional per-exercise folders (if present) containing schema, seed data, and a `solution.sql`.
- `sql/` : (optional) shared SQL scripts or helpers.
- `data/` : (optional) CSV or SQL seed files for loading into a local database.
- `test.md` : miscellaneous notes or scratch file in this repo.

Getting started
---------------

Choose an environment. Two easy options are SQLite (zero-install) or PostgreSQL (more realistic):

1) SQLite (recommended for quick practice)

- Install sqlite3 for Windows if not already installed: https://www.sqlite.org/download.html
- Create a database and load a SQL file (PowerShell commands):

```powershell
# create an empty database file
sqlite3 practice.db ".databases"

# to run a SQL script against the DB
sqlite3 practice.db < data/seed.sql

# open an interactive shell
sqlite3 practice.db
```

2) PostgreSQL (recommended if you want more advanced features)

- Install Postgres locally or run with Docker. Example Docker command:

```powershell
docker run --name sql50-postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres:latest
```

- Connect with `psql` or a GUI client and run seed scripts from `data/`.

How to use this repo
---------------------

- Pick an exercise folder (or open the top-level exercise file).
- Load the corresponding schema and seed data into your DB of choice.
- Open the `problem.md` or exercise description and write your query in a new file (for example `my-solution.sql`).
- Compare your results with `solution.sql` if present.

Naming conventions
------------------

- Exercise folders: `exercise-01`, `exercise-02`, ...
- Solution files: `solution.sql` inside each exercise folder.
- Seed data: `seed.sql` or CSV files inside `data/` or the exercise folder.

Examples & Tips
----------------

- Common SQL tasks covered: SELECT, JOIN, GROUP BY, HAVING, subqueries, CTEs, window functions, INSERT/UPDATE/DELETE, and creating indexes.
- Use `EXPLAIN` / `EXPLAIN ANALYZE` to study query plans (Postgres) and learn optimization basics.
- If using SQLite, note some advanced features (e.g., full-featured window functions) may differ from Postgres.

Contributing
------------

Contributions are welcome. A good flow:

1. Fork the repo.
2. Add an exercise folder or improve an existing one with:
   - `problem.md` — a clear description of the task
   - `schema.sql` — create table statements
   - `seed.sql` or CSVs — example data
   - `solution.sql` — a correct, well-commented solution
3. Open a PR with a short description of your changes.

License
-------

This repository is provided for learning purposes. Add a license file if you want to specify reuse terms (e.g., MIT).

Contact / Next steps
--------------------

- If you want, I can:
  - scaffold 50 numbered exercise folders with templates,
  - add a Docker Compose file with Postgres and a small loader for seeds,
  - convert `test.md` into the first exercise description.

Enjoy practicing SQL!
