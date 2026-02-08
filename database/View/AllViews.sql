CREATE OR REPLACE VIEW View_Authentication AS
SELECT 
    cust_id AS user_id, 
    cust_email AS email, 
    cust_pass AS password, 
    'CUSTOMER' AS user_role
FROM Customer
UNION ALL
SELECT 
    phar_id AS user_id, 
    admin_email AS email, 
    admin_pass AS password, 
    'PHARMACIST' AS user_role
FROM Pharmacist;


CREATE OR REPLACE VIEW View_Customer_Receipts AS
SELECT 
    s.sales_ID AS Receipt_No,
    c.fname || ' ' || c.lname AS Customer_Name,
    m.name AS Medicine_Name,
    p.quantity AS Quantity,
    s.unit_price_at_sale AS Unit_Price,
    s.total_amount AS Total_Paid,
    s.sale_date AS Transaction_Date,
    ph.fname || ' ' || ph.lname AS Served_By
FROM Sales s
JOIN Purchasing p ON s.purchase_ID = p.purchase_ID
JOIN Customer c ON p.cust_ID = c.cust_ID
JOIN Medicines m ON p.med_ID = m.med_ID
JOIN Pharmacist ph ON s.phar_ID = ph.phar_ID;


CREATE OR REPLACE VIEW View_Sales_Analytics AS
SELECT 
    s.sales_ID,
    m.name AS Product_Sold,
    m.med_category AS Category,
    p.quantity AS Quantity_Sold,
    s.unit_price_at_sale AS Price_Per_Unit,
    s.total_amount AS Revenue_Generated,
    s.sale_date AS Sale_Timestamp,
    ph.fname || ' ' || ph.lname AS Pharmacist_Name
FROM Sales s
JOIN Purchasing p ON s.purchase_ID = p.purchase_ID
JOIN Medicines m ON p.med_ID = m.med_ID
JOIN Pharmacist ph ON s.phar_ID = ph.phar_ID;