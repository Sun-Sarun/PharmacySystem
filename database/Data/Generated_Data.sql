-- =============================================
-- FINAL ORACLE-FIX: PROCEDURAL DATA LOAD
-- =============================================

-- 1. CLEAR EVERYTHING
TRUNCATE TABLE Sales;
TRUNCATE TABLE Purchasing;
TRUNCATE TABLE Pharmacist;
TRUNCATE TABLE Customer;
TRUNCATE TABLE Medicines;

-- 2. RESET IDENTITY COUNTERS
ALTER TABLE Medicines MODIFY(med_ID GENERATED AS IDENTITY (START WITH 1));
ALTER TABLE Customer MODIFY(cust_ID GENERATED AS IDENTITY (START WITH 1));
ALTER TABLE Pharmacist MODIFY(phar_ID GENERATED AS IDENTITY (START WITH 1));
ALTER TABLE Purchasing MODIFY(purchase_ID GENERATED AS IDENTITY (START WITH 1));
ALTER TABLE Sales MODIFY(sales_ID GENERATED AS IDENTITY (START WITH 1));

-- 3. LOAD MEDICINES (10 Records)
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Analgesics', 'Panadol Extra', 'GSK', 'Pain relief', 'Tablet', 5.50, 100);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Antibiotics', 'Amoxicillin', 'Sandoz', 'Infection', 'Capsule', 12.00, 50);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Antihistamines', 'Claritin', 'Bayer', 'Allergy', 'Tablet', 15.75, 80);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Antacids', 'Gaviscon', 'Reckitt', 'Heartburn', 'Bottle', 8.20, 40);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Vitamins', 'Centrum', 'Pfizer', 'Daily Vit', 'Bottle', 25.00, 30);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Diabetes', 'Metformin', 'Merck', 'Sugar', 'Tablet', 10.50, 200);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Cardiovascular', 'Lipitor', 'Pfizer', 'Cholesterol', 'Tablet', 45.00, 60);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Respiratory', 'Ventolin', 'GSK', 'Asthma', 'Unit', 18.30, 25);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Topical', 'Voltaren', 'Novartis', 'Gel', 'Tube', 14.50, 45);
INSERT INTO Medicines (med_category, name, brand, description, unit, price, stock) VALUES ('Antivirals', 'Tamiflu', 'Roche', 'Flu', 'Capsule', 35.00, 20);

-- 4. LOAD CUSTOMERS (10 Records)
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('John', 'Doe', 'Male', 34, 'john@test.com', 'p1');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('Jane', 'Smith', 'Female', 28, 'jane@test.com', 'p2');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('Mike', 'Brown', 'Male', 45, 'mike@test.com', 'p3');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('Emily', 'Davis', 'Female', 52, 'emily@test.com', 'p4');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('Rob', 'Wilson', 'Male', 61, 'rob@test.com', 'p5');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('Sarah', 'Miller', 'Female', 23, 'sarah@test.com', 'p6');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('David', 'Taylor', 'Male', 39, 'david@test.com', 'p7');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('Linda', 'Moore', 'Female', 48, 'linda@test.com', 'p8');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('James', 'Anderson', 'Male', 55, 'james@test.com', 'p9');
INSERT INTO Customer (fname, lname, gender, age, cust_email, cust_pass) VALUES ('Karen', 'White', 'Female', 31, 'karen@test.com', 'p10');

-- 5. LOAD PHARMACISTS (10 Records)
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Alice', 'Johnson', 'Female', 'alice@ph.com', 'a1');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Mark', 'Stevens', 'Male', 'mark@ph.com', 'a2');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Sophia', 'Lee', 'Female', 'sophia@ph.com', 'a3');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Tom', 'Hanks', 'Male', 'tom@ph.com', 'a4');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Grace', 'Kelly', 'Female', 'grace@ph.com', 'a5');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Chris', 'Evans', 'Male', 'chris@ph.com', 'a6');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Emma', 'Watson', 'Female', 'emma@ph.com', 'a7');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Dan', 'Craig', 'Male', 'dan@ph.com', 'a8');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Scarlett', 'J', 'Female', 'scar@ph.com', 'a9');
INSERT INTO Pharmacist (fname, lname, gender, admin_email, admin_pass) VALUES ('Paul', 'Rudd', 'Male', 'paul@ph.com', 'a10');

COMMIT;

-- 6. LOAD PURCHASING (20 Records)
-- We insert these separately and commit so they exist for the Sales trigger
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (1, 1, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (2, 2, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (3, 3, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (4, 4, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (5, 5, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (6, 6, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (7, 7, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (8, 8, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (9, 9, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (10, 10, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (1, 2, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (2, 3, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (3, 4, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (4, 5, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (5, 6, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (6, 7, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (7, 8, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (8, 9, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (9, 10, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (10, 1, 1);

COMMIT;

-- 7. LOAD SALES (20 Records)
-- The trigger trg_process_complete_sale will fire for each of these
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (1, 1);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (2, 2);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (3, 3);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (4, 4);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (5, 5);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (6, 6);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (7, 7);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (8, 8);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (9, 9);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (10, 10);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (1, 11);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (2, 12);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (3, 13);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (4, 14);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (5, 15);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (6, 16);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (7, 17);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (8, 18);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (9, 19);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (10, 20);

COMMIT;