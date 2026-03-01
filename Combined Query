CREATE DATABASE banking_system;
USE banking_system;

-- ===============================
-- Table: Customer
-- ===============================
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    dob DATE,
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200)
);

INSERT INTO Customer (first_name, last_name, dob, phone, email, address) VALUES
('Urvashi', 'Singh', '2004-05-12', '9876543210', 'urvashi@gmail.com', 'Delhi'),
('Priya', 'Mehmi', '2005-08-21', '9123456780', 'priya@gmail.com', 'Mumbai'),
('Ayesha', 'Ansari', '2004-03-15', '9988776655', 'ayesha@gmail.com', 'Lucknow'),
('Kavya', 'Srivastava', '2006-11-30', '9090909090', 'kavya@gmail.com', 'Hyderabad');


-- ===============================
-- Table: Branch
-- ===============================
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100),
    IFSC_code VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO Branch (branch_name, IFSC_code, city) VALUES
('Connaught Place Branch', 'SBIN0001', 'Delhi'),
('Bandra Branch', 'SBIN0002', 'Mumbai'),
('Hazratganj Branch', 'SBIN0003', 'Lucknow'),
('Banjara Hills Branch', 'SBIN0004', 'Hyderabad');


-- ===============================
-- Table: Account
-- ===============================
CREATE TABLE Account (
    account_no INT PRIMARY KEY AUTO_INCREMENT,
    balance DECIMAL(12,2),
    account_type VARCHAR(30),
    open_date DATE,
    customer_id INT,
    branch_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

INSERT INTO Account (balance, account_type, open_date, customer_id, branch_id) VALUES
(50000.00, 'Savings', '2023-01-10', 1, 1),
(75000.00, 'Current', '2023-02-15', 2, 2),
(62000.00, 'Savings', '2023-03-20', 3, 3),
(88000.00, 'Savings', '2023-04-25', 4, 4);


-- ===============================
-- Table: Transactions
-- ===============================
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_date DATE,
    transaction_type VARCHAR(30),
    amount DECIMAL(12,2),
    account_no INT,
    FOREIGN KEY (account_no) REFERENCES Account(account_no)
);

INSERT INTO Transactions (transaction_date, transaction_type, amount, account_no) VALUES
('2024-01-10', 'Deposit', 10000.00, 1),
('2024-01-15', 'Withdrawal', 5000.00, 2),
('2024-02-01', 'Transfer', 7000.00, 3),
('2024-02-10', 'Deposit', 12000.00, 4);


-- ===============================
-- Table: Card
-- ===============================
CREATE TABLE Card (
    card_no INT PRIMARY KEY AUTO_INCREMENT,
    card_type VARCHAR(30),
    expiry_date DATE,
    create_date DATE,
    card_pin INT,
    account_no INT,
    FOREIGN KEY (account_no) REFERENCES Account(account_no)
);

INSERT INTO Card (card_type, expiry_date, create_date, card_pin, account_no) VALUES
('Debit', '2028-12-31', '2023-01-15', 1234, 1),
('Debit', '2028-11-30', '2023-02-20', 2345, 2),
('Credit', '2029-10-31', '2023-03-25', 3456, 3),
('Debit', '2028-09-30', '2023-04-30', 4567, 4);


-- ===============================
-- Table: Loan
-- ===============================
CREATE TABLE Loan (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_type VARCHAR(50),
    loan_amount DECIMAL(12,2),
    duration INT,
    interest_rate DECIMAL(5,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Loan (loan_type, loan_amount, duration, interest_rate, customer_id) VALUES
('Home Loan', 1500000.00, 120, 8.5, 1),
('Car Loan', 500000.00, 60, 9.0, 2),
('Education Loan', 300000.00, 48, 7.5, 3),
('Personal Loan', 200000.00, 36, 10.0, 4);


-- ===============================
-- Table: Employee
-- ===============================
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2),
    designation VARCHAR(50),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

INSERT INTO Employee (employee_name, salary, designation, branch_id) VALUES
('Neha Kapoor', 45000.00, 'Manager', 1),
('Simran Kaur', 35000.00, 'Clerk', 2),
('Pooja Mehta', 40000.00, 'Cashier', 3),
('Isha Gupta', 38000.00, 'Officer', 4);
