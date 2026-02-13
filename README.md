# EcommerceDB-Task2
“SQL internship task – e‑commerce database with insert, update, delete, and NULL handling.”
# Task 2 – E-Commerce Data Insertion and Handling Nulls

## 📌 Objective
Practice SQL Data Manipulation Language (DML) operations — `INSERT`, `UPDATE`, and `DELETE` — using an e-commerce dataset, while handling `NULL` values and default constraints.

## 🛠️ Tools Used
- PostgreSQL (via pgAdmin / DB Fiddle / SQLiteStudio)
- GitHub for submission

## 📂 Deliverables
- `task2.sql` → SQL commands for table creation, insertion, update, and deletion
- `README.md` → Explanation of steps and learnings
- Screenshots (optional) → Showing query execution results

---

## 🗄️ Table Schema
```sql
CREATE TABLE products (
    id SERIAL PRIMARY KEY,          -- Auto-increment unique product ID
    name VARCHAR(100) NOT NULL,     -- Product name
    category VARCHAR(50),           -- Product category (can be NULL)
    price DECIMAL(10,2) NOT NULL,   -- Product price
    stock INT DEFAULT 0,            -- Available stock, default 0
    discount BOOLEAN DEFAULT FALSE  -- Discount flag, default false
);
