# mysql-library-management
Small database project covering basic SQL commands (CREATE, INSERT, SELECT, WHERE, ORDER BY, UPDATE, DELETE).
# 📚 MySQL Library Management System

A beginner-friendly MySQL mini-project designed to demonstrate fundamental database concepts, data manipulation, and SQL querying.

---

## 🛠️ Concepts & Features Covered

This project implements a complete relational database for a library system including:

- **Database & Table Creation:** `CREATE DATABASE`, `CREATE TABLE` with Primary Keys and Foreign Keys.
- **Data Constraints:** `AUTO_INCREMENT`, `NOT NULL`, `UNIQUE`, `DEFAULT`, and foreign key references[cite: 1].
- **Data Insertion:** Realistic sample data for members, books, and borrowing records[cite: 1].
- **Queries & Filtering:** `SELECT`, `WHERE`, `AND`, `OR`, `NULL` checks (`IS NULL` / `IS NOT NULL`)[cite: 1].
- **Sorting & Pagination:** `ORDER BY` (ASC/DESC) combined with `LIMIT`[cite: 1].
- **Data Updates & Deletions:** Safe execution of `UPDATE` and `DELETE` queries using primary keys[cite: 1].

---

## 🗄️ Database Structure

The project consists of three related tables[cite: 1]:

1. **`members`**: Stores user details (Name, Email, City, Active status)[cite: 1].
2. **`books`**: Stores book catalog details (Title, Author, Category, Price, Availability)[cite: 1].
3. **`borrowings`**: Tracks book borrowings linking members to books with borrow and return dates[cite: 1].

---

## 🚀 How to Run

1. Open **MySQL Command Line Client** or **MySQL Workbench**.
2. Run the SQL script:
   ```sql
   SOURCE path/to/library_db.sql;
