# Tech Company Fundings (2020-2021)

### About This Project
This project involves analyzing a comprehensive tech funding dataset to uncover trends and insights within the startup and investment ecosystem.
The main objective is to showcase how cloud-based tools can be integrated effectively for end-to-end data analysis, from data ingestion to visualization.The project aims to answer important questions such as how funding patterns evolve over time, the impact of company regions on funding, favored industry categories among investors, and overall funding distribution across different sectors.

### Dataset

**File Name:** `tech_fundings.csv`  
This dataset contains up-to-date information about tech company fundings across the globe. It can be used to identify recent trends in tech companies and the investment space.The dataset contains information from January 2020 to 2021 for over 3500 company funding information. The data attributes include - index, company name, website, funding stage, funding date, funding amount in US Dollars, and the region.

### Tech Stacks
- Microsoft Excel
- Azure Databricks
- Azure Synapse
- PowerBI

### Data Analysis
- I have used Python in Azure Databricks to
  - Loaded raw `.csv` file into **Spark DataFrame
  - Run some advance Data Cleaning
  - Cleaned nulls, standardized formats (e.g., funding dates, casting data etc.), and inferred schema
  - Converted Spark DataFrame to Pandas for graphing and intermediate analysis

##### Step 01: Packages, and basic Configuration Code to make a connection with azure client, and Storage. 
![Screenshot 2025-06-07 215746](https://github.com/user-attachments/assets/4a8e19da-51f0-4d12-86fc-08f61a637a82)

  - Mounted Path where data gets stored
    
 ![Screenshot 2025-06-07 215902](https://github.com/user-attachments/assets/3499837c-bad1-40ee-a025-d10bfbd2b964)
 
  - Reading Raw data from storage
    
![Screenshot 2025-06-07 235238](https://github.com/user-attachments/assets/b2db0cbb-d294-4f65-8799-96d5e5a744c4)

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

