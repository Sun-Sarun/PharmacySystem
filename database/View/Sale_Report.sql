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