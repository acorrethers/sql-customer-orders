# SQL Project: Customer Order Analysis

## 🧠 Overview
This project uses a fictional retail dataset to analyze customer spending behavior. It includes two tables: `customers` and `orders`.

## 📊 Key Insight
The goal is to identify top-spending customers by combining data using `JOIN`, summarizing with `GROUP BY`, and sorting results with `ORDER BY`.

## 💻 Tools Used
- SQL (PostgreSQL syntax)
- DB Fiddle (an online SQL editor)

## 🔍 Sample Query

```sql
SELECT c.first_name, c.last_name, SUM(o.total_amt_usd) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.first_name, c.last_name
ORDER BY total_spent DESC;

