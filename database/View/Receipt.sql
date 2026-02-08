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