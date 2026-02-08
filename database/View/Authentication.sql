CREATE OR REPLACE VIEW Authentication AS
SELECT 
    cust_email AS email, 
    cust_pass AS password, 
    'CUSTOMER' AS user_role
FROM Customer
UNION ALL
SELECT 
    admin_email AS email, 
    admin_pass AS password, 
    'PHARMACIST' AS user_role
FROM Pharmacist;