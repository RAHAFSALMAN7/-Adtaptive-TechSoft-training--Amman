# Oracle 9i Development Environment

This directory structure is designed to provide a foundation for working with **Oracle 9i** technologies, including Oracle Forms, PL/SQL, Oracle Reports, and SQL. These tools are essential for developing, managing, and reporting on Oracle databases, particularly in domains like healthcare (hospitals) and education (universities).

## Directory Structure

1. **`forms9i/`**:  
   This folder contains Oracle Forms 9i files. **Oracle Forms 9i** is used to create graphical user interfaces (GUIs) for interacting with Oracle databases. For example, hospitals can use forms to manage patient records, and universities can use them to manage student enrollment.

2. **`PL/SQL 9i/`**:  
   This folder contains PL/SQL scripts. **PL/SQL (Procedural Language/SQL)** is an extension to SQL, allowing the creation of procedural code blocks (loops, conditions, etc.) inside the database. For example, hospitals can use PL/SQL to automate patient billing processes, and universities can use it to manage class registration.

3. **`reports9i/`**:  
   This folder contains Oracle Reports 9i files. **Oracle Reports 9i** is used to generate reports based on data from Oracle databases. Hospitals can generate patient discharge summaries or treatment reports, while universities can create reports for student performance or faculty allocation.

4. **`sql9i/`**:  
   This folder contains SQL scripts. **SQL (Structured Query Language)** is used to interact with databases. Hospitals can use SQL scripts to query patient information, and universities can query student or course data.

5. **`Train DB.txt`**:  
   This text file may contain training data or scripts used to practice SQL and PL/SQL operations on an Oracle 9i database. This data can be tailored for healthcare and education systems for testing, training, or development purposes.

## SQL Examples

Below are examples of SQL queries that showcase common operations in Oracle databases for hospitals and universities:

### 1. Creating a Table for Patients (Hospital Example)
```sql
CREATE TABLE patients (
    patient_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    admission_date DATE,
    diagnosis VARCHAR2(100),
    doctor_assigned VARCHAR2(50)
);
