# 📌 Project Overview – Employee Directory

## 🎯 Objective

This project builds a **searchable Employee Directory** using **Government of Canada Open Data**. The goal is to centralize employee information by department, role, and contact details, making it easily accessible via **PostgreSQL** and **Power BI dashboards**.

---

## 📂 Dataset

* **Source:** [Government of Canada – Employee Directory](https://open.canada.ca/data/en/dataset/8ec4a9df-b76b-4a67-8f93-cdbc2e040098)
* **Format:** CSV
* **Content:** Employee names, job titles, departments, branch/division, role descriptions, and contact details.

---

## 🛠️ Tech Stack

* **Data Storage:** PostgreSQL
* **Data Transformation:** SQL scripts (`/sql/`)
* **Data Profiling & Cleaning:** Python (`/notebooks/`)
* **Visualization & BI:** Power BI
* **Documentation:** Markdown files + ERD diagrams

---

## 🔗 Data Pipeline / Lineage

1. **Raw Data (CSV)** → Downloaded from Government of Canada portal.
2. **Data Profiling (Python)** → Clean & analyze structure (duplicates, nulls, consistency).
3. **Database Modeling (PostgreSQL)** → Tables created with normalization (Employees, Departments, Roles, Contacts).
4. **SQL ETL Scripts** → Load and transform data into relational schema.
5. **Power BI Dashboard** → Connects to PostgreSQL for reporting & search functionality.

---

## 📊 Data Model (Conceptual)

* **Employee** (EmployeeID, Name, Title, DepartmentID, RoleID, ContactID)
* **Department** (DepartmentID, DepartmentName, Branch, Division)
* **Role** (RoleID, RoleName, RoleDescription)
* **Contact** (ContactID, Phone, Email, Location)

---

## 📈 Power BI Features

* **Searchable Directory** → Search employees by name, role, or department.
* **Department Overview** → Headcount, role distribution, contacts.
* **Filtering & Drilldown** → Navigate by organization hierarchy.
* **Export Options** → Generate custom contact sheets.

---

## 🚀 Outcomes

* A **centralized employee directory** for better accessibility.
* Improved **organizational transparency**.
* Practical example of **data lineage, modeling, and BI integration** for portfolio projects.

---

👉 This repo serves as a **data engineering + analytics case study** combining open data, database modeling, and interactive BI visualization.
