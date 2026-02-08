CREATE OR REPLACE VIEW Pharmacist_Sales_Report AS
SELECT 
    p.phar_ID AS Staff_ID,
    p.fname || ' ' || p.lname AS Pharmacist_Name,
    COUNT(s.sales_ID) AS Total_Transactions,
    SUM(s.count) AS Total_Units_Sold,
    TO_CHAR(SUM(s.total_amount), '$99,999.00') AS Total_Revenue_Generated,
    MAX(s.sale_date) AS Last_Sale_Date
FROM Pharmacist p
LEFT JOIN Sales s ON p.phar_ID = s.phar_ID
GROUP BY p.phar_ID, p.fname, p.lname;