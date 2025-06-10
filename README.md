# Tech Company Fundings (2020-2021)

## 📁 Dataset

**File Name:** `tech_fundings.csv`  
This dataset captures funding events for tech companies, including investment amounts, industry verticals, funding stages, regions, and dates.

---

## Data Pipeline Summary

### Step 1: Data Cleaning (Azure Databricks)
  - Loaded raw `.csv` file into **Spark DataFrame
  - Cleaned nulls, standardized formats (e.g., funding dates, casting data), and inferred schema
  - Converted Spark DataFrame to Pandas for graphing and intermediate analysis

_📷 **Add screenshot of your Databricks notebook:**_  

---

### ✅ Step 2: Data Analysis
- Used **Pandas** and **Spark SQL** for:
  - Funding trends by year
  - Top verticals by total funding and number of deals
  - Regional breakdown of funding events
  - Stage-wise investment comparisons

---

### ✅ Step 3: SQL Analytics (Azure Synapse)
- Registered cleaned dataset in **Synapse SQL**
- Wrote T-SQL queries for aggregations (e.g., `SUM`, `COUNT`, `GROUP BY`, `ORDER BY`)
- Generated result sets for Power BI consumption (verticals, years, regions, stages)

---

### ✅ Step 4: Power BI Dashboard
- Connected **Power BI Desktop** to Synapse SQL views
- Created interactive visualizations:
  - 📈 Line chart: Funding over time
  - 📊 Bar chart: Top 10 Verticals by total funding
  - 🧭 Map: Regional funding distribution
  - 🧩 Filters: Funding Stage, Year, Region

_📷 **Add screenshot of full Power BI Dashboard:**_  

---

## 🖼 Dashboard & Visualizations

### 🔹 1. Funding Over Time (Line Chart)
_📷 Add your screenshot here:_  

---

### 🔹 2. Top 10 Verticals by Total Funding (Bar Chart)
_📷 Add your screenshot here:_  

---

### 🔹 3. Funding by Region (Map or Bar)
_📷 Add your screenshot here:_  

---

### 🔹 4. Funding Stage Distribution (Pie or Column)
_📷 Add your screenshot here:_  

---

## 📊 Columns Description

| Column Name         | Description                                                   |
|---------------------|---------------------------------------------------------------|
| `company`           | Name of the funded startup or company                         |
| `Funding_Amount_USD`| Amount of funding received in US Dollars                      |
| `Region`            | Geographic region where the company is based or funded        |
| `Funding_Stage`     | Stage of funding (e.g., Seed, Series A, Series B, etc.)       |
| `Funding_date`      | Date of the funding event (format: YYYY-MM-DD)                |
| `Vertical`          | Industry or category the company operates in (e.g., Fintech)  |

---

## 🧠 Key Insights

- **Top Verticals**: Fintech, Healthtech, and AI dominate investor interest
- **Peak Funding Years**: 2019 and 2021 saw the highest capital inflow
- **Regional Hotspots**: North America leads, followed by Europe and APAC
- **Stage Trends**: Series A and Seed are the most frequent funding stages

---

## 🛠 Tools & Technologies Used

| Tool            | Purpose                                  |
|-----------------|------------------------------------------|
| Azure Databricks| Data cleaning, Spark & Pandas analysis   |
| Azure Synapse   | SQL querying and table creation          |
| Power BI        | Dashboard and visualization              |
| Pandas / Matplotlib | Intermediate plots and EDA           |

---

## 📂 File Structure
tech-fundings-project/
├── tech_fundings.csv
├── notebooks/
│ └── databricks_analysis.ipynb # Spark & pandas analysis
├── synapse/
│ └── tech_funding_queries.sql # Final SQL queries for insights
├── dashboard/
│ └── tech_funding_dashboard.pbix
├── images/
│ ├── databricks_notebook.png
│ ├── powerbi_dashboard.png
│ ├── funding_over_time.png
│ ├── top_verticals.png
│ ├── regional_funding.png
│ └── funding_stage_distribution.png
└── README.md

