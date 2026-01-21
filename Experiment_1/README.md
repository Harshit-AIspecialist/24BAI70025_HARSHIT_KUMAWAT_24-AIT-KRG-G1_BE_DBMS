# README – Library Management Database Experiment

## 1. Aim of the Session
The aim of this experiment is to design and implement a **Library Management System** using SQL that manages books, library visitors, and book issue records while maintaining **data integrity and access control**.

---

## 2. Objective of the Session
- To understand and apply **SQL DDL and DML commands**
- To implement **Primary Key, Foreign Key, NOT NULL, UNIQUE, and CHECK constraints**
- To perform **CRUD operations** (Create, Read, Update, Delete)
- To manage **user roles and privileges**
- To ensure **referential integrity** between related tables

---

## 3. Practical / Experiment Steps
1. Create the `books` table with required constraints.
2. Create the `library_visitors` table with age and email validation.
3. Create the `book_issue` table with foreign key relationships.
4. Insert sample records into tables.
5. Retrieve records using `SELECT` queries.
6. Update visitor details using `UPDATE`.
7. Delete records using `DELETE`.
8. Create a database role.
9. Grant and revoke privileges.

---

## 4. Procedure of the Practical
1. The `books` table is created using a primary key and check constraint.
2. The `library_visitors` table is created with unique email and age validation.
3. The `book_issue` table is created to maintain book issue records using foreign keys.
4. Sample records are inserted into all tables.
5. Data is retrieved using `SELECT` statements.
6. Visitor information is updated using an `UPDATE` query.
7. Book records are deleted using a `DELETE` query.
8. A role named `librarian` is created.
9. Permissions are granted and later revoked to demonstrate access control.

---

## 5. I/O Analysis (Input / Output Analysis)

### Input
- Book details (ID, Name, Author Name, Count)
- Visitor details (User ID, Name, Age, Email)
- Book issue details (Issue ID, Book ID, User ID, Issue Date)
- SQL commands for role and privilege management

### Output
- Tables created successfully
- Records inserted, updated, displayed, and deleted
- Referential integrity maintained
- Role created with controlled access
- Privileges granted and revoked successfully

---

## 6. Learning Outcome
After completing this experiment, I was able to:
- Design relational database tables using SQL
- Apply constraints to ensure data integrity
- Establish relationships using foreign keys
- Perform CRUD operations
- Manage database security using roles and privileges
