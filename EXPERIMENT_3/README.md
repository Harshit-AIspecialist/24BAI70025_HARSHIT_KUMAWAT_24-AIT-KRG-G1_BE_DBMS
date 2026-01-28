# Experiment-3

**Student Name:** Harshit Kumawat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **UID:** 24BAI70025  
**Branch:** CSE - AIML &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Section/Group:** 24AIT_KRG G1  
**Semester:** 4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Date of Performance:** 28/1/26  
**Subject Name:** DBMS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Subject Code:** 24CSH-298  

---

## Aim

To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

---

## Software Requirements

- **Database Management System:**
  - PostgreSQL
  - Oracle
- **Database Administration Tool:**
  - pgAdmin

---

## Objectives

- To create a simple PL/SQL program demonstrating **Declaration Section** and **Execution Section**.

---

## Problem Statement

Design and implement a simple PL/SQL program that demonstrates the basic structure of a PL/SQL block. The program should include a **declaration section** to define variables and an **execution section** to perform operations using those variables and display the results using appropriate output statements.

### Declaration Section (DECLARE)

Variables are declared and initialized:

- `emp_id` → Employee ID
- `emp_name` → Employee Name
- `emp_salary` → Employee Salary

### Execution Section (BEGIN ... END)

`DBMS_OUTPUT.PUT_LINE` is used to display output.

---

## Practical/Experiment Steps

- **Block Structuring:** Designed a foundational PL/SQL block consisting of a Declaration section for memory allocation and an Execution section for logic processing.  
- **Variable Initialization:** Defined and assigned static values to organizational variables, including Employee ID, Name, and Salary, to simulate a single-record data environment.  
- **Computational Logic:** Integrated an arithmetic operation within the block to calculate the House Rent Allowance (HRA) at 40% of the base salary.  
- **Conditional Processing:** Implemented a selection structure using an IF-ELSE statement to evaluate tax liability based on the defined salary threshold.  
- **Output Orchestration:** Utilized the `DBMS_OUTPUT.PUT_LINE` procedure to format and display the processed information in the console.  

---

## Procedure

### 1. Setup and Preparation

- **Establish Connection:** Open your Database Administration Tool (pgAdmin) and establish a connection to your PostgreSQL database environment.  
- **Identify Goal:** Confirm the goal is to create a foundational PL/SQL block demonstrating declaration, execution, and output.

### 2. Block Implementation: Declaration Section

- **Begin Block Structuring:** Initiate the procedural block with the `DO $$` and `END $$;` structure, and the core PL/SQL block with the `DECLARE` and `BEGIN` keywords.  
- **Reserve Memory:** Within the DECLARE section, define and reserve memory for the required variables:  
  - `emp_id (INT)`  
  - `emp_name (VARCHAR)`  
  - `emp_salary (NUMERIC)`  
- **Variable Initialization:** Assign static initial values to simulate a single-record data environment:  
  - `emp_id := 101`  
  - `emp_name := 'THOMAS'`  
  - `emp_salary := 25000`  

### 3. Execution Logic and Output

- **Start Execution:** Begin the execution part of the code after the `BEGIN` keyword.  
- **Display Primary Details:** Utilize built-in output procedure (`RAISE NOTICE` in PostgreSQL DO block) to display ID, Name, and Salary.  
- **Perform Calculation:** Calculate House Rent Allowance (HRA) at 40% of the base salary:  
  - `(0.40 * emp_salary)`  
- **Implement Conditional Logic:** Apply IF-ELSE logic to evaluate tax status:  
  - If `emp_salary > 60000` → Display tax message  
  - Else → Display no tax message  

### 4. Execution and Verification

- **Finalize and Execute:** Conclude the block with the `END` keyword and execute the script to trigger the PL/SQL engine.  
- **Verify Output:** Check console output and verify:  
  - All variable values are displayed correctly  
  - HRA calculation is accurate  
  - IF-ELSE condition gives correct message  

---

## Input/Output Analysis

### SQL Input Queries

```sql
DO $$
DECLARE
    emp_id     INT := 101;
    emp_name   VARCHAR(20) := 'THOMAS';
    emp_salary NUMERIC := 25000;
BEGIN
    RAISE NOTICE 'EMPLOYEE ID: %', emp_id;
    RAISE NOTICE 'EMPLOYEE NAME: %', emp_name;
    RAISE NOTICE 'SALARY: RS. %', emp_salary;
    RAISE NOTICE 'HOUSE RENT ALLOWANCE: RS. %', (0.40 * emp_salary);

    IF emp_salary > 60000 THEN
        RAISE NOTICE 'YOU NEED TO PAY TAX';
    ELSE
        RAISE NOTICE 'YOU DO NOT HAVE TO PAY TAX';
    END IF;
END $$;
```
| Section                         | Element                | Value / Description                              | Result / Expected Output        |
| ------------------------------- | ---------------------- | ------------------------------------------------ | ------------------------------- |
| **Input (Declaration Section)** | `emp_id` (INT)         | `101`                                            | N/A                             |
|                                 | `emp_name` (VARCHAR)   | `'THOMAS'`                                       | N/A                             |
|                                 | `emp_salary` (NUMERIC) | `25000`                                          | N/A                             |
| **Process (Execution Section)** | HRA Calculation        | `0.40 * emp_salary`                              | `0.40 * 25000 = 10000`          |
|                                 | Conditional Check      | `emp_salary > 60000`                             | `25000 > 60000 is FALSE`        |
| **Output (Execution Section)**  | Employee ID            | `RAISE NOTICE 'EMPLOYEE ID: 101'`                | EMPLOYEE ID: 101                |
|                                 | Employee Name          | `RAISE NOTICE 'EMPLOYEE NAME: THOMAS'`           | EMPLOYEE NAME: THOMAS           |
|                                 | Salary                 | `RAISE NOTICE 'SALARY: RS. 25000'`               | SALARY: RS. 25000               |
|                                 | House Rent Allowance   | `RAISE NOTICE 'HOUSE RENT ALLOWANCE: RS. 10000'` | HOUSE RENT ALLOWANCE: RS. 10000 |
|                                 | Tax Status Message     | Executes the `ELSE` block                        | YOU DO NOT HAVE TO PAY TAX      |


### Learning Outcomes

- Understanding the fundamental organisation of PL/SQL declaration and execution sections.

- Learnt to declare, initialise, and use different data types within a procedural block.

- Implementing conditional branching and basic arithmetic operations to process data dynamically.

- Utilising built-in procedures to format and display calculated results to the user.
