-- 1. Create Medicines Table
CREATE TABLE Medicines (
    med_ID NUMBER PRIMARY KEY,
    med_category VARCHAR2(100),
    name VARCHAR2(200) NOT NULL,
    description CLOB,
    price NUMBER(10, 2),
	photo BLOB
);

-- 2. Create Customer Table
CREATE TABLE Customer (
    cust_ID NUMBER PRIMARY KEY,
    fname VARCHAR2(50),
    lname VARCHAR2(50),
    gender VARCHAR2(10),
    age NUMBER(3),
    contact_add VARCHAR2(255),
    cust_email VARCHAR2(100) UNIQUE,
    cust_pass VARCHAR2(100),
	photo BLOB

);

-- 3. Create Pharmacist Table
CREATE TABLE Pharmacist (
    phar_ID NUMBER PRIMARY KEY,
    fname VARCHAR2(50),
    lname VARCHAR2(50),
    gender VARCHAR2(10),
    age NUMBER(3),
	photo 
    contact_add VARCHAR2(255),
    admin_email VARCHAR2(100) UNIQUE,
    admin_pass VARCHAR2(100),
	photo BLOB
);

-- 4. Create Purchasing Table
CREATE TABLE Purchasing (
    purchase_ID NUMBER PRIMARY KEY,
    cust_ID NUMBER,
    med_ID NUMBER,
    amount NUMBER(10, 2),
    purchase_date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_pur_cust FOREIGN KEY (cust_ID) REFERENCES Customer(cust_ID),
    CONSTRAINT fk_pur_med FOREIGN KEY (med_ID) REFERENCES Medicines(med_ID)
);

-- 5. Create Sales Table
CREATE TABLE Sales (
    sales_ID NUMBER PRIMARY KEY,
    phar_ID NUMBER,
    cust_ID NUMBER,
    med_ID NUMBER,
    count NUMBER,
    purchase_ID NUMBER,
    sale_date DATE DEFAULT SYSDATE,
    total_amount NUMBER(10, 2),
    CONSTRAINT fk_sales_phar FOREIGN KEY (phar_ID) REFERENCES Pharmacist(phar_ID),
    CONSTRAINT fk_sales_cust FOREIGN KEY (cust_ID) REFERENCES Customer(cust_ID),
    CONSTRAINT fk_sales_med FOREIGN KEY (med_ID) REFERENCES Medicines(med_ID),
    CONSTRAINT fk_sales_pur FOREIGN KEY (purchase_ID) REFERENCES Purchasing(purchase_ID)
);

-- 6. Create Reports Table
CREATE TABLE Reports (
    report_ID NUMBER PRIMARY KEY,
    purchase_ID NUMBER,
    sales_ID NUMBER,
    cust_ID NUMBER,
    report_date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_rep_pur FOREIGN KEY (purchase_ID) REFERENCES Purchasing(purchase_ID),
    CONSTRAINT fk_rep_sales FOREIGN KEY (sales_ID) REFERENCES Sales(sales_ID),
    CONSTRAINT fk_rep_cust FOREIGN KEY (cust_ID) REFERENCES Customer(cust_ID)
);
