# 💊 PharmacySystem
**A comprehensive database solution for modern pharmacy management.**
[![UserInterface](https://img.shields.io/badge/MS-Access-F80000?style=for-the-badge&logo=oracle)]
[![Database](https://img.shields.io/badge/Database-Oracle_26ai-008000?style=for-the-badge&logo=oracle)](https://www.oracle.com/database/)
[![Status](https://img.shields.io/badge/Status-Archive-yellow?style=for-the-badge)](#)

This repository provides a robust, normalized relational database designed to handle inventory, prescriptions, and sales transactions.

---

## 🚀 Environment Setup

### 1. Prerequisites
First, ensure you have the necessary Oracle environment installed:
* **Engine:** [Oracle Database (Free Tier)](https://www.oracle.com/database/free/get-started/#free-platforms)
* **GUI:** [SQL Developer](https://www.oracle.com/database/sqldeveloper/technologies/download/) or [DBeaver](https://dbeaver.io/)

### 2. Connection Profile
Establish a connection as the **SYSTEM** user with the following parameters:

| Parameter | Value |
| :--- | :--- |
| **Username** | `system` |
| **Password** | *[Your chosen password]* |
| **Hostname** | `localhost` |
| **Port** | `1521` |
| **SID / Service** | `free` / `FREEPDB1` |

---

## 🛠 Database Deployment

Follow these steps in sequence to ensure data integrity and proper permission mapping.

### Phase A: User Creation
Execute the [Create_User.sql](https://github.com/Sun-Sarun/PharmacySystem/blob/main/database/User/Create_User.sql) script. 

> [!IMPORTANT]
> The user must be named **`C##PHARMACYSYSTEM`**. Ensure you grant all necessary system permissions (`CREATE SESSION`, `CREATE TABLE`, `UNLIMITED TABLESPACE`) to this user before proceeding.

### Phase B: Schema Construction
1. **Initialize Tables:** Run the core [PharmacySystem.sql](https://github.com/Sun-Sarun/PharmacySystem/blob/main/database/PharmacySystem.sql) to build the relational structure.
2. **Initialize Views:** Run [AllViews.sql](https://github.com/Sun-Sarun/PharmacySystem/tree/main/database/View/AllViews.sql) to set up the reporting and abstraction layers.

### Phase C: Data Seeding
To populate the system for testing or demonstration, run the [Generated_Data.sql](https://github.com/Sun-Sarun/PharmacySystem/blob/main/database/Data/Generated_Data.sql) script.

---

## 📊 System Architecture & Design

### Relational Model & Data Flow
The system architecture follows a 3rd Normal Form (3NF) structure to ensure data consistency and efficient transaction handling.

#### Entity Relationship Diagram (ERD)
![erd](https://github.com/Sun-Sarun/PharmacySystem/blob/main/images/Untitled%20diagram-2026-02-19-151513.svg)

#### Data Flow Diagram (DFD)
![dfd](https://github.com/Sun-Sarun/PharmacySystem/blob/main/images/Untitled%20diagram-2026-02-19-150312.svg)

---

## 💻 User Interface Preview

### Authentication & Dashboards
Below are snapshots of the front-end implementation connected to this database.

| Registration | User Dashboard | Admin Panel |
| :--- | :--- | :--- |
| ![registration](https://github.com/Sun-Sarun/PharmacySystem/blob/main/images/logo/Screenshot%202026-02-19%20082155.png) | ![User Dashboard](https://github.com/Sun-Sarun/PharmacySystem/blob/main/images/logo/Screenshot%202026-02-19%20082305.png) | ![admin Dashboard](https://github.com/Sun-Sarun/PharmacySystem/blob/main/images/logo/Screenshot%202026-02-19%20083150.png) |

---

## 📂 Project Assets

* **Documentation:** [Data Analysis Deep-Dive](https://docs.google.com/document/d/1HX51INusfO_gLxMe6IMSvC7S6JRV7qvu/edit?usp=drive_link)
* **Presentation:** [Project Overview Slide Deck](https://www.canva.com/design/DAHAUtwS3Kw/iN9FH4K_iGnf-eRikUHomA/edit)
* **External Logic:** [ERD Reference Guide](https://itsourcecode.com/uml/pharmacy-management-system-er-diagram/)

---
