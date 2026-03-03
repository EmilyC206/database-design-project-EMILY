# AGENTS.md

## Cursor Cloud specific instructions

This is a pure SQL database project (MySQL). There is no application framework, build system, or package manager.

### Service: MySQL 8.0

- **Start MySQL** (required before any SQL work):
  ```
  sudo mkdir -p /var/run/mysqld && sudo chown mysql:mysql /var/run/mysqld
  sudo mysqld --user=mysql --datadir=/var/lib/mysql --socket=/var/run/mysqld/mysqld.sock --pid-file=/var/run/mysqld/mysqld.pid &
  ```
  Wait ~5 seconds, then verify with `sudo mysqladmin -u root status`.

- **Connect**: `sudo mysql -u root first_aid_business`

- **Load schema + data**: The SQL in `sql/FIRST_AID_DATABASE.sql` contains a `DROP DATABASE` statement right after `CREATE DATABASE` — do not execute the file verbatim. Instead, create the database first (`CREATE DATABASE IF NOT EXISTS first_aid_business`), then execute the `CREATE TABLE` and `INSERT` statements in order (Customer → Inventory → Orders → Shipment → Problems) due to foreign key dependencies.

- **Run queries**: Sample analytical queries and views are in `sql/SQL Queries on First Aid Database.sql`. Execute them against the `first_aid_business` database.

- **Gotcha — column name**: The `Inventory` table has a column named `Price$` (with a dollar sign). Always backtick-quote it: `` `Price$` ``.

- **No lint/build/test tooling**: This repo has no linters, test frameworks, or build steps. Validation means successfully executing the SQL scripts against MySQL and verifying row counts (50 rows per table in the original data set).
