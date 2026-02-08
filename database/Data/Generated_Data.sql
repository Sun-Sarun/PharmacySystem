-- =============================================
-- PHARMACY DATA POPULATION SCRIPT (100 RECORDS)
-- =============================================

-- 1. POPULATE MEDICINES (20 Records)
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Amoxicillin', 'Antibiotic', 'Treats bacterial infections', 12.50, 100, 10);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Paracetamol', 'Analgesic', 'Pain and fever relief', 5.00, 500, 50);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Ibuprofen', 'NSAID', 'Reduces inflammation', 8.75, 200, 20);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Cetirizine', 'Antihistamine', 'Allergy relief', 15.00, 150, 15);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Metformin', 'Antidiabetic', 'Blood sugar control', 20.00, 300, 30);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Atorvastatin', 'Statin', 'Lowers cholesterol', 45.50, 80, 10);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Omeprazole', 'PPI', 'Heartburn treatment', 18.25, 120, 20);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Lisinopril', 'ACE Inhibitor', 'Blood pressure relief', 22.00, 90, 15);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Albuterol', 'Bronchodilator', 'Asthma inhaler', 35.00, 60, 5);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Azithromycin', 'Antibiotic', 'Bacterial infection treatment', 25.00, 75, 10);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Sertraline', 'Antidepressant', 'Mood stabilizer', 30.00, 110, 15);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Amlodipine', 'Calcium Blocker', 'Hypertension treatment', 14.00, 200, 25);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Metoprolol', 'Beta Blocker', 'Chest pain treatment', 19.50, 140, 20);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Losartan', 'ARB', 'Hypertension treatment', 21.00, 130, 15);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Prednisone', 'Corticosteroid', 'Reduces inflammation', 10.00, 250, 40);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Gabapentin', 'Anticonvulsant', 'Nerve pain relief', 28.00, 95, 10);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Hydrochlorothiazide', 'Diuretic', 'Fluid retention treatment', 12.00, 180, 20);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Fluticasone', 'Corticosteroid', 'Nasal allergy spray', 40.00, 50, 5);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Furosemide', 'Diuretic', 'Edema treatment', 9.50, 220, 30);
INSERT INTO Medicines (name, med_category, description, price, stock, min_stock_level) VALUES ('Levothyroxine', 'Thyroid Hormone', 'Hypothyroidism treatment', 16.00, 400, 50);

-- 2. POPULATE CUSTOMER (20 Records)
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('John', 'Doe', 'Male', 34, '123 Pine St', 'john.doe@email.com', 'pass123');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Jane', 'Smith', 'Female', 28, '456 Oak St', 'jane.smith@email.com', 'pass456');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Robert', 'Brown', 'Male', 45, '789 Maple Ave', 'rob.b@email.com', 'pass789');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Emily', 'Davis', 'Female', 22, '101 Cedar Rd', 'emily.d@email.com', 'pass101');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Michael', 'Wilson', 'Male', 50, '202 Birch Blvd', 'mike.w@email.com', 'pass202');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Sarah', 'Johnson', 'Female', 31, '303 Elm St', 'sarah.j@email.com', 'pass303');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('David', 'Miller', 'Male', 39, '404 Walnut Ln', 'david.m@email.com', 'pass404');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Linda', 'Garcia', 'Female', 55, '505 Cherry St', 'linda.g@email.com', 'pass505');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('James', 'Rodriguez', 'Male', 27, '606 Ash Dr', 'james.r@email.com', 'pass606');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Barbara', 'Martinez', 'Female', 62, '707 Spruce St', 'barb.m@email.com', 'pass707');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('William', 'Hernandez', 'Male', 41, '808 Poplar Rd', 'will.h@email.com', 'pass808');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Susan', 'Lopez', 'Female', 36, '909 Willow Way', 'susan.l@email.com', 'pass909');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Joseph', 'Gonzalez', 'Male', 29, '111 Redwood St', 'joe.g@email.com', 'pass111');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Jessica', 'Wilson', 'Female', 24, '222 Sycamore Ave', 'jess.w@email.com', 'pass222');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Thomas', 'Anderson', 'Male', 48, '333 Aspen Cir', 'tom.a@email.com', 'pass333');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Karen', 'Thomas', 'Female', 53, '444 Hickory Ln', 'karen.t@email.com', 'pass444');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Charles', 'Taylor', 'Male', 60, '555 Magnolia Dr', 'charles.t@email.com', 'pass555');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Nancy', 'Moore', 'Female', 33, '666 Juniper St', 'nancy.m@email.com', 'pass666');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Christopher', 'Jackson', 'Male', 37, '777 Dogwood Ln', 'chris.j@email.com', 'pass777');
INSERT INTO Customer (fname, lname, gender, age, contact_add, cust_email, cust_pass) VALUES ('Lisa', 'White', 'Female', 44, '888 Cypress Ct', 'lisa.w@email.com', 'pass888');

-- 3. POPULATE PHARMACIST (20 Records)
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Alice', 'Wong', 'Female', 29, 'Pharm Apt 1', 'alice.w@pharmacy.com', 'admin1');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Mark', 'Stevens', 'Male', 35, 'Pharm Apt 2', 'mark.s@pharmacy.com', 'admin2');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Elena', 'Ricci', 'Female', 42, 'Pharm Apt 3', 'elena.r@pharmacy.com', 'admin3');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Kevin', 'Platt', 'Male', 31, 'Pharm Apt 4', 'kevin.p@pharmacy.com', 'admin4');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Sophia', 'Lee', 'Female', 27, 'Pharm Apt 5', 'sophia.l@pharmacy.com', 'admin5');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Brian', 'Hall', 'Male', 38, 'Pharm Apt 6', 'brian.h@pharmacy.com', 'admin6');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Chloe', 'Adams', 'Female', 45, 'Pharm Apt 7', 'chloe.a@pharmacy.com', 'admin7');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Daniel', 'King', 'Male', 33, 'Pharm Apt 8', 'daniel.k@pharmacy.com', 'admin8');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Grace', 'Baker', 'Female', 26, 'Pharm Apt 9', 'grace.b@pharmacy.com', 'admin9');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Frank', 'Wright', 'Male', 50, 'Pharm Apt 10', 'frank.w@pharmacy.com', 'admin10');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Olivia', 'Green', 'Female', 30, 'Pharm Apt 11', 'olivia.g@pharmacy.com', 'admin11');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Henry', 'Scott', 'Male', 36, 'Pharm Apt 12', 'henry.s@pharmacy.com', 'admin12');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Zoe', 'Young', 'Female', 28, 'Pharm Apt 13', 'zoe.y@pharmacy.com', 'admin13');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Ian', 'Walker', 'Male', 40, 'Pharm Apt 14', 'ian.w@pharmacy.com', 'admin14');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Lily', 'Evans', 'Female', 32, 'Pharm Apt 15', 'lily.e@pharmacy.com', 'admin15');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Jack', 'Morris', 'Male', 44, 'Pharm Apt 16', 'jack.m@pharmacy.com', 'admin16');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Mia', 'Rossi', 'Female', 25, 'Pharm Apt 17', 'mia.r@pharmacy.com', 'admin17');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Noah', 'Ward', 'Male', 37, 'Pharm Apt 18', 'noah.w@pharmacy.com', 'admin18');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Ruby', 'Foster', 'Female', 29, 'Pharm Apt 19', 'ruby.f@pharmacy.com', 'admin19');
INSERT INTO Pharmacist (fname, lname, gender, age, contact_add, admin_email, admin_pass) VALUES ('Paul', 'Clark', 'Male', 48, 'Pharm Apt 20', 'paul.c@pharmacy.com', 'admin20');

-- 4. POPULATE PURCHASING (20 Records)
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (1, 1, 12.50);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (2, 2, 10.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (3, 3, 17.50);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (4, 4, 30.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (5, 5, 20.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (6, 6, 91.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (7, 7, 18.25);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (8, 8, 44.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (9, 9, 35.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (10, 10, 25.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (11, 11, 60.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (12, 12, 28.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (13, 13, 19.50);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (14, 14, 42.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (15, 15, 10.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (16, 16, 56.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (17, 17, 12.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (18, 18, 80.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (19, 19, 19.00);
INSERT INTO Purchasing (cust_ID, med_ID, amount) VALUES (20, 20, 32.00);

-- 5. POPULATE SALES (20 Records)
-- Triggers will handle stock reduction and total_amount calculation
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (1, 1, 1, 1, 1);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (2, 2, 2, 2, 2);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (3, 3, 3, 2, 3);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (4, 4, 4, 2, 4);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (5, 5, 5, 1, 5);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (6, 6, 6, 2, 6);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (7, 7, 7, 1, 7);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (8, 8, 8, 2, 8);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (9, 9, 9, 1, 9);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (10, 10, 10, 1, 10);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (11, 11, 11, 2, 11);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (12, 12, 12, 2, 12);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (13, 13, 13, 1, 13);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (14, 14, 14, 2, 14);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (15, 15, 15, 1, 15);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (16, 16, 16, 2, 16);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (17, 17, 17, 1, 17);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (18, 18, 18, 2, 18);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (19, 19, 19, 2, 19);
INSERT INTO Sales (phar_ID, cust_ID, med_ID, count, purchase_ID) VALUES (20, 20, 20, 2, 20);

COMMIT;