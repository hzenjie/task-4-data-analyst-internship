# Data Analyst Internship - Task 4: SQL for Data Analysis

## 📌 Project Overview
This repository contains the deliverables for Task 4 of the Data Analyst Internship. The main objective of this task is to extract, manipulate, and analyze structured e-commerce data using SQL queries to derive meaningful business insights.

## 🛠️ Tools Used
* **Database Engine:** SQLite
* **GUI Tool:** DB Browser for SQLite
* **Dataset:** `order_score_prediction_1.csv` (E-commerce transactional and delivery performance data)

## 📊 Key Analysis & Queries Executed

### 1. Payment Type Analysis
* **Objective:** Analyzed the average product price across different payment methods for high-satisfaction transactions (Score >= 4).
* **Key Finding:** Credit card and debit card users generally have higher average purchase values compared to vouchers.

### 2. Revenue & Freight Aggregation
* **Objective:** Calculated total revenue generated (`sum_price`) and the overall average shipping cost (`sum_freight`) across the entire dataset using aggregate functions (`SUM`, `AVG`).

### 3. Virtual View Creation (`ringkasan_skor`)
* **Objective:** Built a reusable Virtual Table (**View**) to summarize total orders and the average shipping distance (`mean_distance_km`) grouped by customer satisfaction scores.

---

## 📂 Repository Structure
* `order_score_prediction_1.csv` - The raw database table file.
* `tugas_4_sql_analysis.sql` - The complete clean script containing all SQL queries.
* `screenshots/` - Directory containing successful query execution proofs.

---

## 💬 Interview Questions & Answers

### 1. What is the difference between WHERE and HAVING?
`WHERE` is used to filter individual rows **before** any grouping (`GROUP BY`) occurs. It cannot be used with aggregate functions (like `SUM`, `AVG`). On the other hand, `HAVING` is used to filter groups **after** the `GROUP BY` clause is applied, meaning it works specifically with aggregate functions.

### 2. What are the different types of joins?
* **INNER JOIN:** Returns records that have matching values in both tables.
* **LEFT JOIN (or LEFT OUTER JOIN):** Returns all records from the left table, and the matched records from the right table. Unmatched rows from the right side return `NULL`.
* **RIGHT JOIN (or RIGHT OUTER JOIN):** Returns all records from the right table, and the matched records from the left table.
* **FULL JOIN (or FULL OUTER JOIN):** Returns all records when there is a match in either the left or right table.

### 3. How do you calculate average revenue per user (ARPU) in SQL?
You calculate it by dividing the total revenue by the total number of unique users using `SUM()` and `COUNT(DISTINCT)`.
```sql
SELECT SUM(total_price) / COUNT(DISTINCT user_id) AS arpu FROM orders;

### 4. What are subqueries?
A subquery is a query nested inside another SQL statement (such as within SELECT, FROM, or WHERE). It is used to fetch data that will be used by the main query as a condition or temporary table.

5. How do you optimize a SQL query?
Create Indexes on columns that are frequently used in WHERE, JOIN, or ORDER BY clauses.
Avoid using SELECT *; specify only the column names you actually need. Use LIMIT to restrict the number of rows returned when testing data.

6. What is a view in SQL?
A View is a virtual table based on the result-set of an SQL statement. It doesn't store physical data itself; instead, it stores the query and dynamically fetches the latest data whenever the View is called.

7. How would you handle null values in SQL?
- Use the IS NULL or IS NOT NULL operators in the WHERE clause to filter data.
- Use functions like COALESCE (column, replacement) or IFNULL() to replace NULL values with a default value (like 0 or "No Data").
