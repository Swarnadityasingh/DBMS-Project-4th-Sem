-- Banking Management System Database 

CREATE DATABASE Banking_System;
USE Banking_System;


-- CUSTOMER TABLE
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255)
);

INSERT INTO Customers (customer_id, first_name, last_name, dob, phone, email, address) VALUES
(1, 'Urvashi', 'Singh', '2004-05-12', '9876543210', 'urvashi@gmail.com', 'Delhi'),
(2, 'Priya', 'Mehmi', '2005-08-21', '9123456780', 'priya@gmail.com', 'Mumbai'),
(3, 'Ayesha', 'Ansari', '2004-03-15', '9988776655', 'ayesha@gmail.com', 'Lucknow'),
(4, 'Kavya', 'Srivastava', '2006-11-30', '9090909090', 'kavya@gmail.com', 'Hyderabad'),
(5, 'Rahul', 'Sharma', '2003-02-10', '9812345678', 'rahul@gmail.com', 'Delhi'),
(6, 'Ankit', 'Verma', '2004-06-18', '9823456789', 'ankit@gmail.com', 'Mumbai'),
(7, 'Neha', 'Gupta', '2005-09-25', '9834567890', 'neha@gmail.com', 'Lucknow'),
(8, 'Simran', 'Kaur', '2003-12-05', '9845678901', 'simran@gmail.com', 'Amritsar'),
(9, 'Rohit', 'Yadav', '2004-01-14', '9856789012', 'rohit@gmail.com', 'Noida'),
(10, 'Pooja', 'Mishra', '2005-07-19', '9867890123', 'pooja@gmail.com', 'Kanpur'),
(11, 'Arjun', 'Reddy', '2003-04-22', '9878901234', 'arjun@gmail.com', 'Hyderabad'),
(12, 'Sneha', 'Patel', '2004-10-30', '9889012345', 'sneha@gmail.com', 'Ahmedabad'),
(13, 'Vikas', 'Chauhan', '2003-08-11', '9890123456', 'vikas@gmail.com', 'Jaipur'),
(14, 'Meena', 'Joshi', '2005-05-16', '9901234567', 'meena@gmail.com', 'Pune'),
(15, 'Karan', 'Malhotra', '2004-09-09', '9912345678', 'karan@gmail.com', 'Delhi'),
(16, 'Nisha', 'Saxena', '2003-11-27', '9923456789', 'nisha@gmail.com', 'Lucknow'),
(17, 'Aman', 'Khan', '2005-03-08', '9934567890', 'aman@gmail.com', 'Bhopal'),
(18, 'Riya', 'Das', '2004-07-13', '9945678901', 'riya@gmail.com', 'Kolkata'),
(19, 'Deepak', 'Tiwari', '2003-06-21', '9956789012', 'deepak@gmail.com', 'Varanasi'),
(20, 'Ishita', 'Roy', '2005-12-02', '9967890123', 'ishita@gmail.com', 'Delhi');



-- BRANCH TABLE
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    IFSC_code VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO Branches (branch_id, branch_name, IFSC_code, city) VALUES
(101, 'Connaught Place Branch', 'SBIN0001', 'Delhi'),
(102, 'Bandra Branch', 'SBIN0002', 'Mumbai'),
(103, 'Hazratganj Branch', 'SBIN0003', 'Lucknow'),
(104, 'Banjara Hills Branch', 'SBIN0004', 'Hyderabad'),
(105, 'Noida Sector 18 Branch', 'SBIN0005', 'Noida'),
(106, 'Kanpur Central Branch', 'SBIN0006', 'Kanpur'),
(107, 'Amritsar Main Branch', 'SBIN0007', 'Amritsar'),
(108, 'Bhopal MP Nagar Branch', 'SBIN0008', 'Bhopal'),
(109, 'Ahmedabad CG Road Branch', 'SBIN0009', 'Ahmedabad'),
(110, 'Jaipur MI Road Branch', 'SBIN0010', 'Jaipur'),
(111, 'Pune Shivaji Nagar Branch', 'SBIN0011', 'Pune'),
(112, 'Kolkata Howrah Branch', 'SBIN0012', 'Kolkata'),
(113, 'Varanasi Lanka Branch', 'SBIN0013', 'Varanasi'),
(114, 'Delhi Karol Bagh Branch', 'SBIN0014', 'Delhi'),
(115, 'Mumbai Andheri East Branch', 'SBIN0015', 'Mumbai'),
(116, 'Lucknow Aliganj Branch', 'SBIN0016', 'Lucknow'),
(117, 'Hyderabad Secunderabad Branch', 'SBIN0017', 'Hyderabad'),
(118, 'Chandigarh Sector 22 Branch', 'SBIN0018', 'Chandigarh'),
(119, 'Indore Vijay Nagar Branch', 'SBIN0019', 'Indore'),
(120, 'Patna Boring Road Branch', 'SBIN0020', 'Patna');



-- ACCOUNT TABLE
-- Customer HAS Account
-- Account BELONGS TO Branch
CREATE TABLE Accounts (
    account_no INT PRIMARY KEY,
    balance DECIMAL(12,2),
    account_type VARCHAR(30),
    open_date DATE,
    customer_id INT,
    branch_id INT,
    
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

INSERT INTO Accounts (account_no, balance, account_type, open_date, customer_id, branch_id) VALUES
(1001, 50000.00, 'Savings', '2023-01-10', 1, 101),
(1002, 75000.00, 'Current', '2023-02-15', 2, 102),
(1003, 62000.00, 'Savings', '2023-03-20', 3, 103),
(1004, 88000.00, 'Savings', '2023-04-25', 4, 104),
(1005, 54000.00, 'Savings', '2023-05-01', 5, 105),
(1006, 91000.00, 'Current', '2023-05-10', 6, 106),
(1007, 30000.00, 'Savings', '2023-05-18', 7, 107),
(1008, 120000.00, 'Current', '2023-05-25', 8, 108),
(1009, 45000.00, 'Savings', '2023-06-02', 9, 109),
(1010, 67000.00, 'Savings', '2023-06-10', 10, 110),
(1011, 150000.00, 'Current', '2023-06-18', 11, 111),
(1012, 72000.00, 'Savings', '2023-06-25', 12, 112),
(1013, 39000.00, 'Savings', '2023-07-03', 13, 113),
(1014, 86000.00, 'Current', '2023-07-11', 14, 114),
(1015, 51000.00, 'Savings', '2023-07-20', 15, 115),
(1016, 98000.00, 'Current', '2023-07-28', 16, 116),
(1017, 43000.00, 'Savings', '2023-08-05', 17, 117),
(1018, 110000.00, 'Current', '2023-08-12', 18, 118),
(1019, 76000.00, 'Savings', '2023-08-20', 19, 119),
(1020, 84000.00, 'Current', '2023-08-28', 20, 120);



-- LOAN TABLE
-- Customer APPLIES Loan
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    loan_type VARCHAR(50),
    loan_amount DECIMAL(12,2),
    duration INT,
    interest_rate DECIMAL(5,2),
    customer_id INT,
    
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Loans (loan_id, loan_type, loan_amount, duration, interest_rate, customer_id)VALUES
(401, 'Home Loan', 1500000.00, 120, 8.5, 1),
(402, 'Car Loan', 500000.00, 60, 9.0, 2),
(403, 'Education Loan', 300000.00, 48, 7.5, 3),
(404, 'Personal Loan', 200000.00, 36, 10.0, 4),
(405, 'Home Loan', 1800000.00, 180, 8.2, 5),
(406, 'Car Loan', 600000.00, 72, 9.1, 6),
(407, 'Education Loan', 400000.00, 60, 7.8, 7),
(408, 'Personal Loan', 250000.00, 36, 10.5, 8),
(409, 'Home Loan', 2200000.00, 240, 8.0, 9),
(410, 'Car Loan', 550000.00, 60, 9.3, 10),
(411, 'Education Loan', 350000.00, 48, 7.6, 11),
(412, 'Personal Loan', 300000.00, 36, 10.2, 12),
(413, 'Home Loan', 2000000.00, 180, 8.4, 13),
(414, 'Car Loan', 450000.00, 60, 9.0, 14),
(415, 'Education Loan', 500000.00, 72, 7.9, 15),
(416, 'Personal Loan', 275000.00, 36, 10.3, 16),
(417, 'Home Loan', 1700000.00, 180, 8.1, 17),
(418, 'Car Loan', 650000.00, 72, 9.2, 18),
(419, 'Education Loan', 320000.00, 48, 7.7, 19),
(420, 'Personal Loan', 280000.00, 36, 10.4, 20);



-- TRANSACTIONS TABLE
-- Account PERFORMS Transactions
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    transaction_date DATE,
    transaction_type VARCHAR(30),
    amount DECIMAL(12,2),
    account_no INT,
    
    FOREIGN KEY (account_no) REFERENCES Account(account_no)
);

INSERT INTO Transactions (transaction_id, transaction_date, transaction_type, amount, account_no) VALUES
(201, '2024-01-10', 'Deposit', 10000.00, 1001),
(202, '2024-01-15', 'Withdrawal', 5000.00, 1002),
(203, '2024-02-01', 'Transfer', 7000.00, 1003),
(204, '2024-02-10', 'Deposit', 12000.00, 1004),
(205, '2024-02-15', 'Deposit', 8000.00, 1005),
(206, '2024-02-18', 'Withdrawal', 3000.00, 1006),
(207, '2024-02-20', 'Transfer', 6000.00, 1007),
(208, '2024-02-25', 'Deposit', 15000.00, 1008),
(209, '2024-03-01', 'Withdrawal', 4000.00, 1009),
(210, '2024-03-05', 'Deposit', 9000.00, 1010),
(211, '2024-03-10', 'Transfer', 11000.00, 1011),
(212, '2024-03-15', 'Deposit', 7000.00, 1012),
(213, '2024-03-18', 'Withdrawal', 3500.00, 1013),
(214, '2024-03-20', 'Deposit', 10000.00, 1014),
(215, '2024-03-22', 'Transfer', 5000.00, 1015),
(216, '2024-03-25', 'Deposit', 13000.00, 1016),
(217, '2024-03-28', 'Withdrawal', 4500.00, 1017),
(218, '2024-04-01', 'Deposit', 16000.00, 1018),
(219, '2024-04-05', 'Transfer', 7500.00, 1019),
(220, '2024-04-10', 'Deposit', 14000.00, 1020);



-- CARD TABLE
-- Account ISSUES Card
CREATE TABLE Cards (
    card_no INT PRIMARY KEY,
    card_type VARCHAR(30),
    expiry_date DATE,
    create_date DATE,
    card_pin INT,
    account_no INT,
    
    FOREIGN KEY (account_no) REFERENCES Account(account_no)
);

INSERT INTO Cards (card_no, card_type, expiry_date, create_date, card_pin, account_no) VALUES
(3001, 'Debit', '2028-12-31', '2023-01-15', 1234, 1001),
(3002, 'Debit', '2028-11-30', '2023-02-20', 2345, 1002),
(3003, 'Credit', '2029-10-31', '2023-03-25', 3456, 1003),
(3004, 'Debit', '2028-09-30', '2023-04-30', 4567, 1004),
(3005, 'Debit', '2028-08-31', '2023-05-05', 5678, 1005),
(3006, 'Credit', '2029-07-31', '2023-05-12', 6789, 1006),
(3007, 'Debit', '2028-06-30', '2023-05-18', 7890, 1007),
(3008, 'Credit', '2029-05-31', '2023-05-25', 8901, 1008),
(3009, 'Debit', '2028-04-30', '2023-06-02', 9012, 1009),
(3010, 'Debit', '2028-03-31', '2023-06-10', 1122, 1010),
(3011, 'Credit', '2029-02-28', '2023-06-18', 2233, 1011),
(3012, 'Debit', '2028-01-31', '2023-06-25', 3344, 1012),
(3013, 'Debit', '2027-12-31', '2023-07-03', 4455, 1013),
(3014, 'Credit', '2029-11-30', '2023-07-11', 5566, 1014),
(3015, 'Debit', '2027-10-31', '2023-07-20', 6677, 1015),
(3016, 'Credit', '2029-09-30', '2023-07-28', 7788, 1016),
(3017, 'Debit', '2027-08-31', '2023-08-05', 8899, 1017),
(3018, 'Credit', '2029-07-31', '2023-08-12', 9900, 1018),
(3019, 'Debit', '2027-06-30', '2023-08-20', 1111, 1019),
(3020, 'Credit', '2029-05-31', '2023-08-28', 2222, 1020);



-- EMPLOYEE TABLE
-- Employee WORKS IN Branch
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2),
    designation VARCHAR(50),
    branch_id INT,
    
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

INSERT INTO Employees (employee_id, employee_name, salary, designation, branch_id) VALUES
(501, 'Swarnaditya Singh', 45000.00, 'Manager', 101),
(502, 'Sahej Mehmi', 35000.00, 'Clerk', 102),
(503, 'Md Khubaib', 40000.00, 'Cashier', 103),
(504, 'Arpit Srivastava', 38000.00, 'Officer', 104),
(505, 'Rahul Sharma', 42000.00, 'Officer', 105),
(506, 'Ankit Verma', 36000.00, 'Clerk', 106),
(507, 'Neha Gupta', 39000.00, 'Cashier', 107),
(508, 'Simran Kaur', 47000.00, 'Manager', 108),
(509, 'Rohit Yadav', 41000.00, 'Officer', 109),
(510, 'Pooja Mishra', 35000.00, 'Clerk', 110),
(511, 'Arjun Reddy', 38000.00, 'Cashier', 111),
(512, 'Sneha Patel', 46000.00, 'Manager', 112),
(513, 'Vikas Chauhan', 40000.00, 'Officer', 113),
(514, 'Meena Joshi', 34000.00, 'Clerk', 114),
(515, 'Karan Malhotra', 37000.00, 'Cashier', 115),
(516, 'Nisha Saxena', 48000.00, 'Manager', 116),
(517, 'Aman Khan', 42000.00, 'Officer', 117),
(518, 'Riya Das', 36000.00, 'Clerk', 118),
(519, 'Deepak Tiwari', 39000.00, 'Cashier', 119),
(520, 'Ishita Roy', 47000.00, 'Manager', 120);
