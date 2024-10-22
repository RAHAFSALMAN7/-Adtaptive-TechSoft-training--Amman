# Oracle 9i Development Environment

## Overview

This directory structure is designed to provide a foundation for working with **Oracle 9i** technologies, including Oracle Forms, PL/SQL, Oracle Reports, and SQL. These tools are essential for developing, managing, and reporting on Oracle databases.

---

## Directory Structure

### 1. `forms9i/`
- **Purpose**: This folder contains Oracle Forms 9i files.
- **Oracle Forms 9i** is used to create graphical user interfaces (GUIs) for interacting with Oracle databases.
- Forms allow users to create, retrieve, update, and delete data from Oracle databases using an easy-to-use interface.

### 2. `PL/SQL 9i/`
- **Purpose**: This folder contains PL/SQL scripts.
- **PL/SQL (Procedural Language/SQL)** is an extension to SQL, allowing the creation of procedural code blocks (loops, conditions, etc.) inside the database.
- PL/SQL is used to automate tasks, build procedures, triggers, and functions that interact directly with Oracle databases.

### 3. `reports9i/`
- **Purpose**: This folder contains Oracle Reports 9i files.
- **Oracle Reports 9i** is used to generate reports based on data from Oracle databases. Reports can be presented in various formats, such as PDF, HTML, or Excel.
- Reports are essential for decision-making processes, summarizing data, or extracting information for users.

### 4. `sql9i/`
- **Purpose**: This folder contains SQL scripts.
- **SQL (Structured Query Language)** is used to interact with databases. SQL scripts perform tasks like querying, updating, and managing data in Oracle 9i databases.

### 5. `Train DB.txt`
- **Purpose**: This text file may contain training data or scripts used to practice SQL and PL/SQL operations on an Oracle 9i database.
- **Usage**: This data can be imported into an Oracle database for testing, training, or development purposes.

---

## SQL Examples

Below are examples of SQL queries that showcase common operations in Oracle databases:

### 1. Creating a Table
```sql
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    hire_date DATE,
    salary NUMBER
);
