# 📊 Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀  
This project demonstrates an end-to-end data warehousing and analytics solution — from raw data ingestion to exploratory analysis, advanced analytics, and business reporting.

Built as a **portfolio-grade project**, it showcases best practices in **data engineering, SQL analytics, and business intelligence**.

---

## 🏗️ Data Architecture

The project follows the **Medallion Architecture** approach:

### 🔹 Bronze Layer
- Stores raw data as received from source systems
- Data is ingested from **ERP and CRM CSV files** into SQL Server

### 🔹 Silver Layer
- Handles data cleansing, standardization, and normalization
- Ensures data quality and analytical consistency

### 🔹 Gold Layer
- Contains business-ready data
- Modeled into a **Star Schema** optimized for reporting and analytics

---

## 📖 Project Overview

This project covers the full analytics lifecycle:

1. **Data Architecture Design**
   - Modern data warehouse using Bronze, Silver, and Gold layers

2. **ETL Development**
   - SQL-based extraction, transformation, and loading pipelines

3. **Data Modeling**
   - Fact and dimension tables designed for analytical workloads

4. **Exploratory Data Analysis (EDA)**
   - Understanding data distributions, trends, and anomalies

5. **Advanced Analytics**
   - Time-based analysis, segmentation, cumulative metrics, and performance evaluation

6. **Business Reporting**
   - Customer and product-level analytical reports for decision-making

---

## 🔍 Analytics & Insights Coverage

The analytics layer answers key business questions around:

- Customer behavior
- Product performance
- Sales trends over time
- Contribution & distribution analysis
- Performance and growth metrics

---

## 📊 Analysis & Reporting Structure

All analytical work is organized under the **scripts** directory for clarity and reproducibility.

---

### 📁 Exploratory Data Analysis (EDA)

**Location:** `scripts/EDA/`

This folder contains SQL scripts focused on understanding and validating the dataset:

- **date_exploration**  
  Analysis of time ranges, trends, and seasonality

- **exploring_the_database**  
  High-level data discovery and database structure inspection

- **magnitude_exploration**  
  Sales volume, revenue magnitude, and scale analysis

- **measures_exploration**  
  Key business metrics such as revenue, quantity, averages, and ratios

- **ranking**  
  Ranking customers, products, and categories by performance

---

### 📁 Business Reports

**Location:** `scripts/reports/`

This folder contains SQL-based analytical reports designed for business stakeholders:

- **customers_report**
  - Customer segmentation
  - Purchase behavior analysis
  - Revenue contribution and ranking

- **products_report**
  - Product performance evaluation
  - Sales contribution and comparison
  - Product ranking and trend insights

---

### 📁 Advanced Analytics

**Location:** `scripts/advanced-analysis/`

This folder contains deeper analytical techniques commonly used in BI and data analytics roles:

- **change_over_time_analysis**  
  Trend analysis and period-over-period performance comparisons

- **cumulative_analysis**  
  Running totals and cumulative contribution analysis

- **data_segmentation_analysis**  
  Segmentation of customers and products into meaningful analytical groups

- **part_to_whole_analysis**  
  Contribution analysis (e.g., category vs total sales)

- **performance_analysis**  
  KPI evaluation, benchmarking, and performance assessment

---

## 🛠️ Tools & Technologies

All tools used in this project are **free and open-source**:

- SQL Server Express – Data warehouse hosting
- SQL Server Management Studio (SSMS) – Database querying and development
- Draw.io – Architecture, ETL, and data modeling diagrams
- Git & GitHub – Version control and portfolio hosting
- Notion – Project planning and documentation

---

## 📂 Repository Structure
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│   ├── EDA/                            # Exploratory Data Analysis
│   ├── advanced-analysis/              # Advanced analytics
│   ├── reports/                        # Business reports
|
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
---



## 🛡️ License

This project is licensed under the **MIT License**.  
You are free to use, modify, and share this project with proper attribution.

---

## 🌟 About Me

Hi! I'm **Fredrick Maina**, a data-driven IT professional with a strong interest in **data analytics, SQL, and business intelligence**.

This project demonstrates my ability to:
- Design and implement data warehouses
- Write high-quality analytical SQL
- Perform exploratory and advanced data analysis
- Translate data into actionable business insights

Let’s connect and talk data 🚀
