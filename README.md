# 🏦 Banking System Database

A fully structured **relational database project** built using **MySQL** to manage banking operations efficiently and securely.

---

## 📌 Overview

The **Banking Management System Database** is designed to manage and organize information related to:

* 👤 Customers
* 🏦 Bank Accounts
* 🏢 Branches
* 💳 Cards
* 💰 Loans
* 💳 Transactions
* 👨‍💼 Employees

The system implements:

* Relational database principles
* Primary & Foreign key constraints
* One-to-Many relationships

---

## 🛠️ Tools & Technologies Used

* 🗄️ **MySQL** – Database creation & management
* 🖥️ **MySQL Workbench** – Query execution & schema design
* 📊 **Draw.io** – ER Diagram creation
* 🌐 **GitHub** – Version control & project hosting

---

## ⭐ Key Features

✅ Structured Relational Database Design
🔗 Proper Foreign Key Relationships
📊 ER Diagram Representation
🛡️ Data Integrity using Constraints
👥 Multi-user Support
🔐 Role-Based Access Control (RBAC)
📈 Fully Normalized (Up to 3NF)
📦 Scalable & Extendable Architecture

---

# 🗄️ Database Information

**Database Name:** `banking_system`

---

# 📂 Entities and Attributes

## 1️⃣ Customer

* `customer_id` (PK)
* first_name
* last_name
* dob
* phone
* email
* address

---

## 2️⃣ Account

* `account_no` (PK)
* balance
* account_type
* open_date
* `customer_id` (FK → Customer)
* `branch_id` (FK → Branch)

---

## 3️⃣ Branch

* `branch_id` (PK)
* branch_name
* IFSC_code
* city

---

## 4️⃣ Transactions

* `transaction_id` (PK)
* transaction_date
* transaction_type
* amount
* `account_no` (FK → Account)

---

## 5️⃣ Card

* `card_no` (PK)
* card_type
* expiry_date
* create_date
* card_pin
* `account_no` (FK → Account)

---

## 6️⃣ Loan

* `loan_id` (PK)
* loan_type
* loan_amount
* duration
* interest_rate
* `customer_id` (FK → Customer)

---

## 7️⃣ Employee

* `employee_id` (PK)
* employee_name
* salary
* designation
* `branch_id` (FK → Branch)

---

# 🔗 Relationships Overview

| Relationship          | Type  |
| --------------------- | ----- |
| Customer → Account    | 1 : M |
| Branch → Account      | 1 : M |
| Account → Transaction | 1 : M |
| Account → Card        | 1 : M |
| Customer → Loan       | 1 : M |
| Branch → Employee     | 1 : M |

---

# ⚙️ How to Use the Project

## Step 1️⃣: Install Required Tools

* Install **MySQL Server**
* Install **MySQL Workbench**

---

## Step 2️⃣: Create Database

```sql
CREATE DATABASE banking_system;
USE banking_system;
```

---

## Step 3️⃣: Import SQL File

1. Open `banking_system.sql`
2. Execute the script

This will:

✅ Create all tables
🔗 Define foreign key relationships
🛡️ Apply constraints
🔐 Configure user roles (if included)

---

## Step 4️⃣: Perform Database Operations

You can use standard SQL commands:

* `SELECT` – Retrieve data
* `INSERT` – Add records
* `UPDATE` – Modify records
* `DELETE` – Remove records

Example:

```sql
SELECT * FROM Customer;
```

# 📈 ER Diagram

The ER diagram visually represents:

* Entities
* Attributes
* Primary Keys
* Foreign Keys
* Cardinality (1:M) relationships

![ER Diagram](ER%20Diagram.png)

# 👨‍💻 Project Team

👤 Swarnaditya Singh
👤 Sahej Mehmi
👤 Md. Khubaib
👤 Arpit Srivastava


---

# 📜 License

This project is created for **educational and academic purposes only**.
It may be used and modified for learning and submissions.
