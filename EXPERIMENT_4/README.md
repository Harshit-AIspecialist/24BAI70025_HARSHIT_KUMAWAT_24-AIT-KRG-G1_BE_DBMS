# Experiment 4 – PL/SQL Conditional Control Statements

**Student Name:** Harshit Kumawat  
**UID:** 24BAI70025  
**Branch:** CSE – AIML  
**Section/Group:** 24AIT_KRG G1  
**Semester:** 4  
**Date of Performance:** 04/02/26  
**Subject Name:** DBMS  
**Subject Code:** 24CSH-298  

---

## 📌 Aim
To design and implement PL/SQL programs utilizing conditional control statements such as **IF–ELSE, ELSIF, ELSIF ladder, and CASE constructs** in order to control the flow of execution based on logical conditions and to analyse decision-making capabilities in PL/SQL blocks.

---

## 💻 Software Requirements
- **Database Management System:** PostgreSQL  
- **Database Administration Tool:** pgAdmin  

---

## 🎯 Objectives
- Implement control structures in PL/SQL:
  - IF–ELSE  
  - IF–ELSIF–ELSE  
  - ELSIF Ladder  
  - CASE Statement  

---

## 🧩 Problem Statement
Develop and execute PL/SQL programs that demonstrate the use of conditional control statements. The programs should employ **IF–ELSE, ELSIF, ELSIF ladder, and CASE statements** to evaluate given conditions and control the flow of execution accordingly, thereby illustrating decision-making capabilities in PL/SQL blocks.

### 1. IF–ELSE Statement
Write a PL/SQL program to check whether a given number is positive or non-positive using the IF–ELSE conditional control statement and display an appropriate message.

### 2. IF–ELSIF–ELSE Statement
Write a PL/SQL program to evaluate the grade of a student based on the obtained marks using the IF–ELSIF–ELSE statement and display the corresponding grade.

### 3. ELSIF Ladder
Write a PL/SQL program to determine the performance status of a student based on marks using an ELSIF ladder and display the appropriate result.

### 4. CASE Statement
Write a PL/SQL program to display the name of the day based on a given day number using the CASE conditional statement.

---

## 🧪 Practical / Experiment Steps
- **Control Blocks**
  - Design and implement distinct PL/SQL program blocks to explore and demonstrate the functionality of each conditional control structure:
    - Simple IF–ELSE
    - ELSIF Ladder (IF–ELSIF–ELSE)
    - CASE Statement
  - Focus on both binary branching and multi-path decision logic.

- **Apply Logic Branching for Data Categorization**
  - Use IF–ELSE and ELSIF ladder to categorize numerical inputs like marks into logical ranges.
  - Automate outputs like grades/performance categories.

- **Optimize Selection Logic with CASE Statement**
  - Use CASE for discrete mapping like day number (1–7) → day name.
  - Include ELSE clause to handle invalid inputs.

- **Integrate Dynamic Messaging**
  - Use `DBMS_OUTPUT.PUT_LINE` for user-friendly console messages.

- **Validate Execution Flow**
  - Test with multiple values (negative numbers, boundary marks, valid/invalid day numbers).
  - Verify correct branch execution and expected output.

---

## ⚙️ Procedure
- **Environment Preparation**
  - Enable output server to view results (example: `SET SERVEROUTPUT ON` in SQL clients).

- **PL/SQL Block Implementation**
  - **IF–ELSE:** Check if a number is positive or not.
  - **IF–ELSIF–ELSE (Grade):** Assign grades based on marks thresholds.
  - **ELSIF Ladder (Performance):** Classify performance into categories.
  - **CASE Statement:** Convert day number into day name.

- **Adherence to Structure**
  - Write programs inside proper PL/SQL blocks:
    - `DECLARE`
    - `BEGIN`
    - `END;`

- **Testing and Validation**
  - Run multiple test cases and verify output.

- **Result Verification**
  - Confirm the output matches correct conditions and document results.

---

## 📥 Input / Output Analysis

### ✅ Program 1: IF–ELSE (Positive / Non-Positive Number)
```sql
DECLARE  
NUM NUMBER := -21;

BEGIN  
    IF NUM > 0 THEN  
        DBMS_OUTPUT.PUT_LINE('IT IS A POSITIVE NUMBER');  
    ELSE  
        DBMS_OUTPUT.PUT_LINE('IT IS A NON-POSITIVE NUMBER');  
    END IF;  
END;
```
### ✅ Program 2: IF–ELSIF–ELSE (Grade Evaluation)
```sql
DECLARE  
MARKS NUMBER := 68;  
GRADE VARCHAR(1);

BEGIN  
    IF MARKS >= 90 THEN  
        GRADE := 'A';  
    ELSIF MARKS >= 80 THEN  
        GRADE := 'B';  
    ELSIF MARKS >= 70 THEN  
        GRADE := 'C';  
    ELSIF MARKS >= 60 THEN  
        GRADE := 'D';  
    ELSE  
        GRADE := 'F';  
    END IF;

    DBMS_OUTPUT.PUT_LINE('MARKS = ' || MARKS || ', GRADE = ' || GRADE);
END;
```
### ✅ Program 3: ELSIF Ladder (Performance Status)
```sql
DECLARE  
MARKS NUMBER := 58;  
PERFORMANCE VARCHAR(20);

BEGIN  
    IF MARKS >= 75 THEN  
        PERFORMANCE := 'DISTINCTION';  
    ELSIF MARKS >= 60 THEN  
        PERFORMANCE := 'FIRST CLASS';  
    ELSIF MARKS >= 50 THEN  
        PERFORMANCE := 'SECOND CLASS';  
    ELSIF MARKS >= 35 THEN  
        PERFORMANCE := 'PASS';  
    ELSE  
        PERFORMANCE := 'FAIL';  
    END IF;

    DBMS_OUTPUT.PUT_LINE('MARKS = ' || MARKS || ' AND PERFORMANCE = ' || PERFORMANCE);  
END;

```
### ✅ Program 4: CASE Statement (Day Name)
```sql
DECLARE  
DAYNUM NUMBER := 3;  
DAYNAME VARCHAR(20);

BEGIN  
    DAYNAME := CASE DAYNUM  
        WHEN 1 THEN 'SUNDAY'  
        WHEN 2 THEN 'MONDAY'  
        WHEN 3 THEN 'TUESDAY'  
        WHEN 4 THEN 'WEDNESDAY'  
        WHEN 5 THEN 'THURSDAY'  
        WHEN 6 THEN 'FRIDAY'  
        WHEN 7 THEN 'SATURDAY'  
        ELSE 'INVALID DAY'  
    END;  
      
    DBMS_OUTPUT.PUT_LINE('IT IS ' || DAYNAME);  
END;
```
![Output 2](EXPERIMENT_4/2.png)
![Output 3](EXPERIMENT_4/3.png)
![Output 4](EXPERIMENT_4/4.png)
![Output 5](EXPERIMENT_4/5.png)
![Output 6](EXPERIMENT_4/6.png)
![Output 7](EXPERIMENT_4/7.png)
![Output 8](EXPERIMENT_4/8.png)


### 📚 Learning Outcomes

- Gained proficiency in using IF–ELSE, ELSIF ladder, and CASE statements in PL/SQL.

- Understood how to automate decisions such as:

- Grade assignment

- Performance classification

- Day name mapping

- Improved logical decision-making using structured control blocks.

