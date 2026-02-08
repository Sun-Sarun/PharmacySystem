CREATE OR REPLACE VIEW Customer_Receipt AS
SELECT 
    s.sales_ID AS Receipt_No,
    s.sale_date AS Date_Issued,
    c.fname || ' ' || c.lname AS Customer_Name,
    m.name AS Medicine_Purchased,
    m.med_category AS Category,
    s.count AS Quantity,
    m.price AS Unit_Price,
    s.total_amount AS Total_Paid,
    p.fname || ' ' || p.lname AS Served_By
FROM Sales s
JOIN Customer c ON s.cust_ID = c.cust_ID
JOIN Medicines m ON s.med_ID = m.med_ID
JOIN Pharmacist p ON s.phar_ID = p.phar_ID;