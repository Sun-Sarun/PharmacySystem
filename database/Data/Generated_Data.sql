-- 1. POPULATE MEDICINES (5 Records)
INSERT INTO Medicines (med_category, name, description, price, stock, min_stock_level) VALUES ('Antibiotics', 'Amoxicillin', 'Used to treat bacterial infections', 15.50, 100, 10);
INSERT INTO Medicines (med_category, name, description, price, stock, min_stock_level) VALUES ('Pain Relief', 'Ibuprofen 400mg', 'Non-steroidal anti-inflammatory drug', 8.25, 200, 20);
INSERT INTO Medicines (med_category, name, description, price, stock, min_stock_level) VALUES ('Cardiology', 'Atorvastatin', 'Cholesterol-lowering medication', 45.00, 50, 5);
INSERT INTO Medicines (med_category, name, description, price, stock, min_stock_level) VALUES ('Respiratory', 'Salbutamol Inhaler', 'Relieves asthma symptoms', 12.00, 75, 10);
INSERT INTO Medicines (med_category, name, description, price, stock, min_stock_level) VALUES ('Vitamins', 'Vitamin C 1000mg', 'Immune system support', 5.99, 300, 15);

-- 2. POPULATE CUSTOMERS (5 Records)
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('John', 'Doe', 'Male', 34, '123 Maple St', 'john.doe@email.com', 'pass123');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Jane', 'Smith', 'Female', 28, '456 Oak Ave', 'jane.smith@email.com', 'secure789');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Robert', 'Brown', 'Male', 52, '789 Pine Rd', 'robert.b@email.com', 'robpass');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Emily', 'Davis', 'Female', 41, '321 Elm St', 'emily.d@email.com', 'emily123');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Michael', 'Wilson', 'Male', 22, '654 Birch Ln', 'm.wilson@email.com', 'wilson99');

-- 3. POPULATE PHARMACISTS (5 Records)
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Alice', 'Johnson', 'Female', 30, 'Pharmacy Hub A', 'alice.rx@pharmacy.com', 'admin_a');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('David', 'Lee', 'Male', 45, 'Pharmacy Hub B', 'david.lee@pharmacy.com', 'admin_b');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Sarah', 'Connor', 'Female', 38, 'Main St Clinic', 'sarah.c@pharmacy.com', 'admin_c');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Kevin', 'Hart', 'Male', 29, 'Downtown Meds', 'kevin.h@pharmacy.com', 'admin_d');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Linda', 'White', 'Female', 50, 'Westside Rx', 'linda.w@pharmacy.com', 'admin_e');

-- 4. POPULATE PURCHASING (20 Records)
-- Assumes IDs start from 1 based on Identity columns
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (1, 1, 2);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (2, 2, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (3, 3, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (4, 4, 3);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (5, 5, 5);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (1, 2, 2);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (2, 4, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (3, 1, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (4, 5, 10);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (5, 3, 2);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (1, 5, 2);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (2, 1, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (3, 2, 3);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (4, 3, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (5, 4, 2);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (1, 4, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (2, 3, 1);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (3, 5, 4);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (4, 1, 2);
INSERT INTO Purchasing (cust_ID, med_ID, quantity) VALUES (5, 2, 1);

-- 5. POPULATE SALES (20 Records)
-- NOTE: The trigger will automatically calculate unit_price_at_sale and total_amount.
-- You only need to provide phar_ID and purchase_ID.
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (1, 1);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (2, 2);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (3, 3);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (4, 4);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (5, 5);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (1, 6);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (2, 7);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (3, 8);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (4, 9);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (5, 10);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (1, 11);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (2, 12);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (3, 13);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (4, 14);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (5, 15);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (1, 16);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (2, 17);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (3, 18);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (4, 19);
INSERT INTO Sales (phar_ID, purchase_ID) VALUES (5, 20);

COMMIT;