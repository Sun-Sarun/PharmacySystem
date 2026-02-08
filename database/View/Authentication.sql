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