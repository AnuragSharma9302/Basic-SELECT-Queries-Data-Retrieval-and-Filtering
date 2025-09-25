# 📊Basic-SELECT-Queries-Data-Retrieval-and-Filtering

#  This is Task 3 of my SQL Internship 🚀

This task focuses on mastering **basic SQL queries** to extract, filter, and organize data effectively.

---

## 📝 Objective

* Practice **data extraction** using SQL.
* Get hands-on experience with `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `GROUP BY`, `HAVING`, `DISTINCT`, and filtering operators (`LIKE`, `IN`, `BETWEEN`, `AND`, `OR`).

---

## 🛠️ Tools Used

* **PG-Admin4/PostgreSQL**

---

## 📂 Project Structure

```
Task3/
│-- README.md          # 📖 Documentation (you are here)
│-- schema.sql         # 🏗️ Database schema (products table)
│-- queries.sql        # 🔍 SQL queries (practice examples)
│-- er-diagram.png     # 🖼️ Entity-Relationship Diagram
```

---

## 🗄️ Database Schema

### Table: `products`

| Column         | Type          | Constraint                           |
| -------------- | ------------- | ------------------------------------ |
| product_id     | SERIAL        | PRIMARY KEY                          |
| name           | VARCHAR(100)  | NOT NULL                             |
| sku_code       | CHAR(8)       | UNIQUE, NOT NULL                     |
| price          | NUMERIC(10,2) | CHECK (price > 0)                    |
| stock_quantity | INT           | DEFAULT 0, CHECK (stock_quantity>=0) |
| is_available   | BOOLEAN       | DEFAULT TRUE                         |
| category       | TEXT          | NOT NULL                             |
| adden_on       | DATE          | DEFAULT CURRENT_DATE                 |
| last_update    | TIMESTAMP     | DEFAULT NOW()                        |

---

## 🔑 Key SQL Clauses & Their Uses

* **`SELECT`** → Extracts specific columns or all data from a table.
* **`WHERE`** → Filters rows based on conditions.
* **`ORDER BY`** → Sorts the result set in ascending or descending order.
* **`LIMIT`** → Restricts the number of rows returned.
* **`GROUP BY`** → Groups rows that have the same values into summary rows.
* **`HAVING`** → Filters grouped data (used with aggregate functions).
* **`DISTINCT`** → Returns only unique values.
* **`LIKE`** → Searches for a specified pattern in a column.
* **`IN`** → Matches values against a list of possibilities.
* **`BETWEEN`** → Filters data within a range.
* **`AND`** → Combines multiple conditions that must all be true.
* **`OR`** → Combines multiple conditions where at least one must be true.

---

## 🔍 Example Queries

✅ **Projection** (selecting columns):

```sql
SELECT name, price FROM products;
```

✅ **Filtering with WHERE**:

```sql
SELECT * FROM products WHERE category = 'Electronics';
```

✅ **Sorting with ORDER BY**:

```sql
SELECT * FROM products ORDER BY price ASC;
```

✅ **Limiting Rows**:

```sql
SELECT * FROM products LIMIT 3;
```

✅ **Grouping & Aggregation**:

```sql
SELECT category, COUNT(*) FROM products
GROUP BY category
HAVING COUNT(*) > 1;
```

✅ **Pattern Matching with LIKE**:

```sql
SELECT * FROM products WHERE name LIKE '%Lamp';
```

✅ **Using IN**:

```sql
SELECT * FROM products WHERE category IN ('Electronics','Accessories');
```

✅ **Using BETWEEN**:

```sql
SELECT * FROM products WHERE price BETWEEN 200 AND 800;
```

✅ **Using AND / OR**:

```sql
SELECT * FROM products 
WHERE category = 'Electronics' AND price > 1000;

SELECT * FROM products 
WHERE stock_quantity < 20 OR price > 1000;
```

---

## 🖼️ ER Diagram

The schema contains a single table **products** with attributes as shown above.
Below is the ER diagram (also provided as `er-diagram.png`):

```plaintext
+-------------+
|  products   |
+-------------+
| product_id  |
| name        |
| sku_code    |
| price       |
| stock_qty   |
| is_available|
| category    |
| adden_on    |
| last_update |
+-------------+
```

---

## 🎯 Outcome

Learnings by completing this task.

* Understand **data extraction** with `SELECT`.
* Apply **filters** with `WHERE`, `LIKE`, `IN`, `BETWEEN`, `AND`, `OR`.
* Use **ordering and limiting** (`ORDER BY`, `LIMIT`).
* Apply **aggregation and grouping** (`GROUP BY`, `HAVING`).
* Build clean, reusable SQL scripts for real-world projects.


