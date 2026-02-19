-- =============================================
-- DROP SCRIPT FOR PHARMACY MANAGEMENT SYSTEM
-- =============================================

-- 1. Drop Triggers
DROP TRIGGER trg_process_complete_sale;

-- 2. Drop Child Tables (Dependencies)
-- These must be dropped first to avoid integrity constraint violations.
DROP TABLE Sales CASCADE CONSTRAINTS;
DROP TABLE Purchasing CASCADE CONSTRAINTS;

-- 3. Drop Parent Tables
DROP TABLE Pharmacist CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Medicines CASCADE CONSTRAINTS;

-- 4. Final Cleanup
PURGE RECYCLEBIN;

COMMIT;