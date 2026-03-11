# Experiment 5 – SQL Conditional Logic (Odd & Even Salary Classification)

## Student Information

**Name:** Harshit Kumawat  
**UID:** 24BAI70025  
**Branch:** CSE – AIML  
**Section / Group:** 24AIT_KRG G1  
**Semester:** 4  
**Subject:** DBMS  
**Subject Code:** 24CSH-298  
**Date of Performance:** 11 March 2026  

---

# Aim
To understand and apply conditional logic in SQL using the modulus operator to analyze numerical data and classify employee salaries as odd or even.

---

# Objectives

- Write SQL queries using the modulus operator `%`
- Identify whether employee salaries are odd or even
- Use conditional logic with `CASE` statements
- Generate a dynamic column showing salary classification

---

# Software Requirements

## Database Systems
- Oracle Database Express Edition (Oracle XE)
- PostgreSQL

## Database Client Tools
- Oracle SQL Developer
- pgAdmin

---

# Experiment Overview

This experiment demonstrates how SQL can apply mathematical operations and conditional logic to analyze numeric values.

An **employee table** is created and populated with sample data. The **modulus operator (%)** is used to check whether a salary is divisible by 2.

A **CASE statement** is then used to classify each salary as:

- Even Salary
- Odd Salary

The result is displayed as a virtual column called **salary_type**.

---

# Table Schema

```sql
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    emp_sal INT
);
```

---

# Sample Data Insertion

```sql
INSERT INTO employees VALUES(1, 'Jack', 12000);
INSERT INTO employees VALUES(2, 'Sarah', 15675);
INSERT INTO employees VALUES(3, 'John', 13000);
INSERT INTO employees VALUES(4, 'Sally', 20001);
INSERT INTO employees VALUES(5, 'Charlie', 15000);
```

---

# SQL Query for Odd and Even Salary Classification

```sql
SELECT *,
CASE
WHEN emp_sal % 2 = 0 THEN 'Even Salary'
ELSE 'Odd Salary'
END AS salary_type
FROM employees;
```

---

# Expected Output

| emp_id | emp_name | emp_sal | salary_type |
|------|------|------|------|
| 1 | Jack | 12000 | Even Salary |
| 2 | Sarah | 15675 | Odd Salary |
| 3 | John | 13000 | Even Salary |
| 4 | Sally | 20001 | Odd Salary |
| 5 | Charlie | 15000 | Even Salary |

---

# Key Concepts Demonstrated

- SQL Table Creation  
- Data Insertion using `INSERT`  
- Modulus Operator `%`  
- Conditional Logic using `CASE`  
- Dynamic column generation in query results  

---

# Learning Outcome

After completing this experiment, students will be able to apply conditional logic in SQL queries, perform numerical analysis using mathematical operators, and generate meaningful classifications from database records.
