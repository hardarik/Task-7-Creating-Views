# Task 7: Creating Views in MySQL

## 🎯 Objective
Learn how to create and use **views** in SQL to abstract complex queries, enhance security, and simplify database operations.

---

## 🧰 Tools Required
- MySQL Workbench 8.0 CE
- MySQL Server

---

## 🧠 What is a View?
A **view** is a virtual table in SQL that is based on the result of a `SELECT` statement. It does not store data physically but provides a way to simplify complex queries and restrict access to certain data.

---

## 📝 Syntax

### Create a View
```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
